//
//  TableViewController.swift
//  Munchies
//
//  Created by Gabriela Souza Batista on 06/12/22.
//

import UIKit

class TableViewController: UIViewController {

    var tableViewModel = TableViewModel()
    func ingredients() {

    }
    var tableViewIngredients = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        view.addSubview(tableViewIngredients)
        tableViewIngredients.delegate = self
        tableViewIngredients.dataSource = self
        tableViewIngredients.register(UITableView.self, forCellReuseIdentifier: "cell")
        self.tableViewIngredients.isEditing = false
        self.tableViewIngredients.allowsMultipleSelectionDuringEditing = true


    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableViewIngredients.frame = view.bounds
    }
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel.ingredientsArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewIngredients.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = tableViewModel.ingredientsArray[indexPath.row]
        return cell
    }


}

//self.selected
//let selectedRow = tableViewIngredients.cellForRow(at: indexPath)
//selectedRow?.accessoryType = (selectedRow?.accessoryType == .checkmark) ? .none : .checkmark
//selectedRow?.tintColor = UIColor(named: "green-01")
//selectedRow?.selectionStyle = .none
//print("Selection color")
