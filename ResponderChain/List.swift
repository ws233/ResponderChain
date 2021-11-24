//
//  List.swift
//  ResponderChain
//
//  Created by Cyril Makankov on 19.11.2021.
//

import UIKit

protocol List {
    associatedtype ViewModel
    var viewModels: [ViewModel] { get }
    func viewModel(for view: UIView) -> ViewModel?
}

extension List where Self: UITableViewController {
    
    /// Возвращает вьюмодель, соответствующую sender'у от которого пришел action.
    /// Рекомендованный Apple способ.
    /// - Parameter view: sender экшена
    /// - Returns: соответсвующая sender'у вьюмодель из массива viewModels.
    func viewModel(for view: UIView) -> ViewModel? {
        let point = tableView.convert(view.center, from: view)
        guard let indexPath = tableView.indexPathForRow(at: point) else { return nil }
        return viewModels[indexPath.row]
    }
        
}
