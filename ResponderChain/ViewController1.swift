//
//  ViewController1.swift
//  ResponderChain
//
//  Created by Cyril Makankov on 16.11.2021.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet public weak var buttonOpenItem2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonOpenItem2.addTarget(nil, action: #selector(UITabBarController.openItem2), for: .touchUpInside)
    }
    
    // MARK: - Menu implementation
    override var canBecomeFirstResponder: Bool {
        return true
    }

}

