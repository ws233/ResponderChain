//
//  TableViewController+Actions.swift
//  ResponderChain
//
//  Created by Cyril Makankov on 17.11.2021.
//

import UIKit

// MARK: - Actions
extension TableViewController {
    @IBAction func openModal(sender: Any?) {
        guard let navigationController = makeModalViewController() as? UINavigationController else { // factory
            return
        }
        setData(in: navigationController, for: sender)
            
        present(navigationController, animated: true) // routing
    }
    
}

// MARK: - Factory
extension TableViewController {
    func makeModalViewController() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "ModalNavigationController")
        return controller
    }
}
