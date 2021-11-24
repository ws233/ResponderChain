//
//  TableViewController.swift
//  ResponderChain
//
//  Created by Cyril Makankov on 17.11.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    let viewModels = ["Ячейка1", "Ячейка2", "Ячейка3"]
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        // Configure the cell...
        if let configurableCell = cell as? TableViewCell {
            configurableCell.viewModel = viewModels[indexPath.row]
        }
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        
        let selector = #selector(UIViewController.showMenu(sender:))
        let target = cell.target(forAction: selector, withSender: cell) as? UIResponder
        target?.perform(selector, with: cell)
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        setData(in: segue.destination, for: sender)
    }
    
    // MARK: - Menu implementation
    
    override var canBecomeFirstResponder: Bool {
        return true
    }

}

// MARK: - List
extension TableViewController: List { }

// MARK: - Data setter
extension TableViewController {
    
    /// Устанавливаем данные во внось открываемый контроллер.
    /// Неважно, каким способом этот контроллер будет открываться.
    /// - Parameters:
    ///   - controller: Открываеммый контроллер
    ///   - sender: вьюха в текущем контроллере, на которой произошло действие пользователя,
    ///             послужившее причиной октрытия нового экрана controller.
    ///             В реальном приложении этот метод будет более абстрактным,
    ///             может быть помещен внутрь протокола List и
    ///             переиспользоваться в любом табичном контроллере или контроллере коллекций.
    ///             В данном примере функция используется в упрощенном виде, чтобы облегчить понимание.
    func setData(in controller: UIViewController, for sender: Any?) {
        guard
            let view = sender as? UIView,
            let item = viewModel(for: view)
        else { return }
        
        let navigationController = controller as? UINavigationController
        navigationController?.topViewController?.title = item
    }
    
}
