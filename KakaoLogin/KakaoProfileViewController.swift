//
//  KakaoProfileViewController.swift
//  KakaoLogin
//
//  Created by 정기현 on 2024/05/08.
//
import KakaoSDKAuth
import KakaoSDKUser
import SnapKit
import UIKit
class KakaoProfileViewController: UIViewController {
    var kakaoName: String = ""
    lazy var userName: UILabel = {
        let lb = UILabel()
        lb.text = "userName"
        lb.textAlignment = .center
        lb.textColor = .white
        lb.backgroundColor = .darkGray
        return lb
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        makeUi()
        userName.text = kakaoName
    }

    func makeUi() {
        view.addSubview(userName)
        userName.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
            $0.leading.equalTo(view.snp.leading).offset(20)
            $0.trailing.equalTo(view.snp.trailing).offset(-20)
            $0.height.equalTo(40)
        }
    }
}
