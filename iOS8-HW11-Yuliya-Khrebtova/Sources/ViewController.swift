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
        background.contentMode = .scaleAspectFit
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
        loginInput.layer.shadowColor = UIColor.systemIndigo.cgColor
        loginInput.layer.shadowOpacity = 0.3
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
        passwordInput.layer.shadowColor = UIColor.systemIndigo.cgColor
        passwordInput.layer.shadowOpacity = 0.3
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

    private lazy var loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.backgroundColor = .systemIndigo
        loginButton.layer.cornerRadius = 25
        loginButton.setTitle("Login", for: .normal)
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.layer.shadowColor = UIColor.systemIndigo.cgColor
        loginButton.layer.shadowOpacity = 0.5
        loginButton.layer.shadowOffset = .zero
        loginButton.layer.shadowRadius = 10
        loginButton.layer.shouldRasterize = true
        loginButton.layer.rasterizationScale = UIScreen.main.scale
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        return loginButton
    }()

    private lazy var forgotPasswordButton: UIButton = {
        let forgotPasswordButton = UIButton()
        forgotPasswordButton.setTitle("Forgot your password?", for: .normal)
        forgotPasswordButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        forgotPasswordButton.setTitleColor(UIColor.white, for: .normal)
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        return forgotPasswordButton
    }()

    private lazy var connectLabel: UILabel = {
        let connectLabel = UILabel()
        connectLabel.text = "or connect with"
        connectLabel.textColor = .gray
        connectLabel.textAlignment = .center
        connectLabel.font = UIFont.boldSystemFont(ofSize: 16)
        connectLabel.translatesAutoresizingMaskIntoConstraints = false
        return connectLabel
    }()

    private lazy var leftLine: UIImageView = {
        let line = UIImage()
        let leftLine = UIImageView(image: line)
        leftLine.backgroundColor = .gray
        leftLine.layer.cornerRadius = 5
        leftLine.layer.opacity = 0.3
        leftLine.translatesAutoresizingMaskIntoConstraints = false
        return leftLine
    }()

    private lazy var rightLine: UIImageView = {
        let line = UIImage()
        let rightLine = UIImageView(image: line)
        rightLine.backgroundColor = .gray
        rightLine.layer.cornerRadius = 5
        rightLine.layer.opacity = 0.3
        rightLine.translatesAutoresizingMaskIntoConstraints = false
        return rightLine
    }()

    private lazy var facebookButton: UIButton = {
        let facebookButton = UIButton()
        facebookButton.setImage(UIImage(named: "facebook"), for: .normal)
        facebookButton.setTitleColor(UIColor.white, for: .normal)
        facebookButton.layer.shadowColor = UIColor.blue.cgColor
        facebookButton.layer.shadowOpacity = 0.3
        facebookButton.layer.shadowOffset = .zero
        facebookButton.layer.shadowRadius = 5
        facebookButton.layer.shouldRasterize = true
        facebookButton.layer.rasterizationScale = UIScreen.main.scale
        facebookButton.translatesAutoresizingMaskIntoConstraints = false
        return facebookButton
    }()

    private lazy var twitterButton: UIButton = {
        let twitterButton = UIButton()
        twitterButton.setImage(UIImage(named: "twitter"), for: .normal)
        twitterButton.setTitleColor(UIColor.white, for: .normal)
        twitterButton.layer.shadowColor = UIColor.cyan.cgColor
        twitterButton.layer.shadowOpacity = 0.3
        twitterButton.layer.shadowOffset = .zero
        twitterButton.layer.shadowRadius = 5
        twitterButton.layer.shouldRasterize = true
        twitterButton.layer.rasterizationScale = UIScreen.main.scale
        twitterButton.translatesAutoresizingMaskIntoConstraints = false
        return twitterButton
    }()

    private lazy var dontHaveAccountLabel: UILabel = {
        let dontHaveAccountLabel = UILabel()
        dontHaveAccountLabel.text = "Don't have account?"
        dontHaveAccountLabel.textColor = .gray
        dontHaveAccountLabel.textAlignment = .center
        dontHaveAccountLabel.font = UIFont.boldSystemFont(ofSize: 16)
        dontHaveAccountLabel.translatesAutoresizingMaskIntoConstraints = false
        return dontHaveAccountLabel
    }()

    private lazy var signUpButton: UIButton = {
        let signUpButton = UIButton()
        signUpButton.setTitle("Sign up", for: .normal)
        signUpButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        signUpButton.setTitleColor(UIColor.systemIndigo, for: .normal)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        return signUpButton
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
        view.addSubview(loginButton)
        view.addSubview(forgotPasswordButton)
        view.addSubview(connectLabel)
        view.addSubview(leftLine)
        view.addSubview(rightLine)
        view.addSubview(facebookButton)
        view.addSubview(twitterButton)
        view.addSubview(dontHaveAccountLabel)
        view.addSubview(signUpButton)
    }

    private func setupLayout() {
        label.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view).offset(70)
        }

        background.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(view).offset(-40)
        }

        loginInput.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(label.snp.bottom).offset(40)
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

        loginButton.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(passwordInput.snp.bottom).offset(40)
            make.height.equalTo(50)
            make.left.equalTo(view).offset(50)
            make.right.equalTo(view).offset(-50)
        }

        forgotPasswordButton.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(loginButton.snp.bottom).offset(15)
        }

        connectLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(facebookButton.snp.top).offset(-30)
        }

        leftLine.snp.makeConstraints { make in
            make.left.equalTo(view).offset(50)
            make.height.equalTo(1)
            make.width.equalTo(70)
            make.bottom.equalTo(facebookButton.snp.top).offset(-38)
        }

        rightLine.snp.makeConstraints { make in
            make.right.equalTo(view).offset(-50)
            make.height.equalTo(1)
            make.width.equalTo(70)
            make.bottom.equalTo(facebookButton.snp.top).offset(-38)
        }

        facebookButton.snp.makeConstraints { make in
            make.left.equalTo(view).offset(150)
            make.height.equalTo(50)
            make.bottom.equalTo(dontHaveAccountLabel.snp.top).offset(-30)
        }

        twitterButton.snp.makeConstraints { make in
            make.left.equalTo(facebookButton.snp.right).offset(20)
            make.height.equalTo(50)
            make.bottom.equalTo(dontHaveAccountLabel.snp.top).offset(-30)
        }

        dontHaveAccountLabel.snp.makeConstraints { make in
            make.bottom.equalTo(view).offset(-40)
            make.left.equalTo(view).offset(90)
        }

        signUpButton.snp.makeConstraints { make in
            make.bottom.equalTo(view).offset(-34)
            make.left.equalTo(dontHaveAccountLabel.snp.right).offset(20)
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
