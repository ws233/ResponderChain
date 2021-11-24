//
//  TableViewCell.swift
//  ResponderChain
//
//  Created by Cyril Makankov on 17.11.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    var viewModel: String? {
        didSet { label.text = viewModel }
    }

}
