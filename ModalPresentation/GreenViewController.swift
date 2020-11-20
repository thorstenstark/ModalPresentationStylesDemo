//
//  GreenViewController.swift
//  ModalPresentation
//
//  Created by Thorsten Stark on 15.11.20.
//

import UIKit

class GreenViewController: ColorfulViewController {

    var sideView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemIndigo
        view.widthAnchor.constraint(equalToConstant: 300).isActive = true
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        setupSideView()
    }

    override func presentNewViewController() {
        let newViewController = OrangeViewController()
        newViewController.modalPresentationStyle = .formSheet
        present(newViewController, animated: true, completion: nil)
    }
}

extension GreenViewController {

    func setupSideView() {
        view.addSubview(sideView)
        sideView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        sideView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        sideView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapSideView)))
    }

    @objc func didTapSideView() {
        let newViewController = BlueViewController()
        newViewController.modalPresentationStyle = .overFullScreen
        present(newViewController, animated: true, completion: nil)
    }
}
