//
//  YellowViewController.swift
//  ModalPresentation
//
//  Created by Thorsten Stark on 18.11.20.
//

import UIKit

class YellowViewController: ColorfulViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        showButton.isHidden = true
    }

    override func presentNewViewController() {

    }
}
