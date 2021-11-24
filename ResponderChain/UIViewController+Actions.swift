//
//  UIViewController+Actions.swift
//  ResponderChain
//
//  Created by Cyril Makankov on 26.11.2021.
//

import UIKit

extension UIViewController {
    @IBAction func showMenu(sender: Any?) {
        guard
            let sender = sender as? UIView,
            becomeFirstResponder()
        else { return }
        
        let menu = UIMenuController.shared
        let rect = view.convert(sender.bounds, from: sender)
        menu.showMenu(from: view, rect: rect)
    }
    
    @IBAction open override func copy(_ sender: Any?) {
        let description = sender ?? "nil"
        print("copy from \(description)")
    }
}
