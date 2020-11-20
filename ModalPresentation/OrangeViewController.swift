//
//  OrangeViewController.swift
//  ModalPresentation
//
//  Created by Thorsten Stark on 18.11.20.
//

import UIKit

class OrangeViewController: ColorfulViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
    }

    override func presentNewViewController() {
        let newViewController = YellowViewController()
        newViewController.modalPresentationStyle = .currentContext
        present(newViewController, animated: true, completion: nil)
    }
}
