//
//  ViewController2.swift
//  ResponderChain
//
//  Created by Cyril Makankov on 16.11.2021.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet public weak var buttonOpenItem1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonOpenItem1.addTarget(nil, action: #selector(UITabBarController.openItem1), for: .touchUpInside)
    }

}

