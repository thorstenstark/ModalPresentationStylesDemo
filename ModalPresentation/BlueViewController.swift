//
//  BlueViewController.swift
//  ModalPresentation
//
//  Created by Thorsten Stark on 20.11.20.
//

import UIKit

class BlueViewController: ColorfulViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        showButton.isHidden = true
        view.backgroundColor = UIColor.systemBlue.withAlphaComponent(0.5)
    }

}
