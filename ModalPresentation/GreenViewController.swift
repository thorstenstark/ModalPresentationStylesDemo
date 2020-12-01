//
//  GreenViewController.swift
//  ModalPresentation
//
//  Created by Thorsten Stark on 15.11.20.
//

import UIKit

class GreenViewController: ColorfulViewController {

    var miniView: UIView = {
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
        closeButton.isHidden = true
        setupMiniView()
    }

    override func presentNewViewController() {
        let newViewController = OrangeViewController()
        newViewController.modalPresentationStyle = .popover
        newViewController.preferredContentSize = CGSize(width: 580, height: 800)

        guard let presentationController: UIPopoverPresentationController = newViewController.popoverPresentationController else { return }
        presentationController.sourceRect = CGRect(x: view.bounds.midX, y: view.bounds.midY, width: 0, height: 0)
        presentationController.sourceView = view
        presentationController.canOverlapSourceViewRect = true
        presentationController.permittedArrowDirections = UIPopoverArrowDirection(rawValue: 0)
        presentationController.delegate = self
        presentationController.popoverLayoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: 150, right: 20)
        presentationController.passthroughViews = [miniView]

        present(newViewController, animated: true, completion: nil)
    }
}

extension GreenViewController {

    func setupMiniView() {
        view.addSubview(miniView)
        miniView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        miniView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        miniView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapSideView)))
    }

    @objc func didTapSideView() {
        let newViewController = BlueViewController()
        newViewController.modalPresentationStyle = .currentContext
        let desiredPresentingController = presentedViewController ?? self
        desiredPresentingController.present(newViewController, animated: true, completion: nil)
    }
}

extension GreenViewController: UIPopoverPresentationControllerDelegate {

    func popoverPresentationController(_ popoverPresentationController: UIPopoverPresentationController, willRepositionPopoverTo rect: UnsafeMutablePointer<CGRect>, in view: AutoreleasingUnsafeMutablePointer<UIView>) {
        rect.pointee = CGRect(x: view.pointee.bounds.midX, y: view.pointee.bounds.midY, width: 0, height: 0)
    }
}














//
//
//
//extension GreenViewController: UIViewControllerTransitioningDelegate {
//    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//        transitioningAnimation.presen
//        return transitioningAnimation
//    }
//
//    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//        return transitioningAnimation
//    }
//}
