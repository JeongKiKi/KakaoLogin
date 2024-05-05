//
//  ViewController.swift
//  KakaoLogin
//
//  Created by 정기현 on 2024/05/03.
//
import KakaoSDKAuth
import KakaoSDKUser
import SnapKit
import UIKit
class LoginViewController: UIViewController {
    let loginView = LoginView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .brown
    }

    override func loadView() {
        super.loadView()
        view.addSubview(loginView)
        loginView.loginBtn.addTarget(self, action: #selector(LoginViewController.loginButtonTapped), for: .touchUpInside)
        loginView.kakaoLoginBtn.addTarget(self, action: #selector(LoginViewController.kakaoLoginButtonTapped), for: .touchUpInside)
        loginView.snp.makeConstraints {
            $0.top.equalTo(self.view)
            $0.leading.bottom.trailing.equalToSuperview()
        }
    }

    @objc func loginButtonTapped() {
        print("로그인 버튼 눌림")
    }

    @objc func kakaoLoginButtonTapped() {
        print("kakaoBtn pressed")
        if UserApi.isKakaoTalkLoginAvailable() {
            UserApi.shared.loginWithKakaoTalk { oauthToken, error in
                if let error = error {
                    print(error)
                } else {
                    print("카카오톡 로그인 성공 - 카카오 앱으로 로그인")
                    _ = oauthToken
                }
            }
        } else {
            UserApi.shared.loginWithKakaoAccount { oauthToken, error in
                if let error = error {
                    print(error)
                } else {
                    print("카카오톡 로그인 성공 - 카카오 계정으로 로그인")
                    _ = oauthToken
                }
            }
        }
    }
}
