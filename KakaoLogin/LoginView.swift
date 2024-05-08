//
//  LogoutView.swift
//  KakaoLogin
//
//  Created by 정기현 on 2024/05/04.
//

import SnapKit
import UIKit
class LoginView: UIView {
    init() {
        super.init(frame: .zero)
        backgroundColor = .yellow
        makeUI()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    lazy var kakaoLoginBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("kakaoLogin", for: .normal)
        btn.backgroundColor = .darkGray
        return btn
    }()

    func makeUI() {
        addSubview(kakaoLoginBtn)
        kakaoLoginBtn.snp.makeConstraints {
            $0.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-50)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.height.equalTo(50)
        }
    }
}
