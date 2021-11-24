//
//  UIApplication+Actions.swift
//  ResponderChain
//
//  Created by Cyril Makankov on 16.11.2021.
//

import UIKit

// MARK: - Actions
extension UIApplication {
    @IBAction func openHabr() {
        guard let url = URL(string: "https://habr.com/ru/feed/") else { return }
        open(url, options: [:])
    }
}
