//
//  ColorfulViewController.swift
//  ModalPresentation
//
//  Created by Thorsten Stark on 18.11.20.
//

import UIKit

class ColorfulViewController: UIViewController {

    lazy var closeButton: UIButton = {
        var button =  UIButton.init(type: .roundedRect, primaryAction: UIAction(handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
        button.setTitle("Close", for: .normal)
        button.backgroundColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 34)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 6
        button.widthAnchor.constraint(equalToConstant: 240).isActive = true
        return button
    }()

    lazy var showButton: UIButton = {
        var button =  UIButton.init(type: .roundedRect, primaryAction: UIAction(handler: { _ in
            self.presentNewViewController()
        }))
        button.setTitle("Show More", for: .normal)
        button.backgroundColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 34)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 6
        button.widthAnchor.constraint(equalToConstant: 240).isActive = true
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        setupSubviews()
    }

    private func setupSubviews() {
        view.addSubview(closeButton)
        closeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        closeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        view.addSubview(showButton)
        showButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive = true
        showButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    func presentNewViewController() { }
}
