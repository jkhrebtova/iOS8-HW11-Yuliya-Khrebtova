//
//  ViewController.swift
//  iOS8-HW11-Yuliya-Khrebtova
//
//  Created by Julia on 21.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    // MARK: - Outlets

    private lazy var background: UIImageView = {
        let image = UIImage(named: "background")
        let background = UIImageView(image: image)
        background.contentMode = .top
        background.translatesAutoresizingMaskIntoConstraints = false
        return background
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var loginInput: UITextField = {
        let loginInput = UITextField()
        loginInput.backgroundColor = .white
        loginInput.layer.shadowColor = UIColor.black.cgColor
        loginInput.layer.shadowOpacity = 0.1
        loginInput.layer.shadowOffset = .zero
        loginInput.layer.shadowRadius = 10
        loginInput.layer.shouldRasterize = true
        loginInput.layer.rasterizationScale = UIScreen.main.scale
        loginInput.layer.cornerRadius = 25
        loginInput.placeholder = "Login"
        loginInput.setLeftIcon(UIImage.init(systemName: "person")!)
        loginInput.translatesAutoresizingMaskIntoConstraints = false
        return loginInput
    }()

    private lazy var passwordInput: UITextField = {
        let passwordInput = UITextField()
        passwordInput.backgroundColor = .white
        passwordInput.layer.shadowColor = UIColor.black.cgColor
        passwordInput.layer.shadowOpacity = 0.1
        passwordInput.layer.shadowOffset = .zero
        passwordInput.layer.shadowRadius = 10
        passwordInput.layer.shouldRasterize = true
        passwordInput.layer.rasterizationScale = UIScreen.main.scale
        passwordInput.layer.cornerRadius = 25
        passwordInput.placeholder = "Password"
        passwordInput.setLeftIcon(UIImage.init(systemName: "lock")!)
        passwordInput.translatesAutoresizingMaskIntoConstraints = false
        return passwordInput
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(background)
        view.addSubview(label)
        view.addSubview(loginInput)
        view.addSubview(passwordInput)
    }

    private func setupLayout() {
        label.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view).offset(100)
        }

        background.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(view).offset(-40)
        }

        loginInput.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(label.snp.bottom).offset(50)
            make.height.equalTo(50)
            make.left.equalTo(view).offset(50)
            make.right.equalTo(view).offset(-50)
        }

        passwordInput.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(loginInput.snp.bottom).offset(20)
            make.height.equalTo(50)
            make.left.equalTo(view).offset(50)
            make.right.equalTo(view).offset(-50)
        }
    }
}

// MARK: - Extentions

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 30, y: 5, width: 20, height: 20))
        iconView.image = image
        iconView.tintColor = .systemGray
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 70, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}

