//
//  TableViewController.swift
//  Munchies
//
//  Created by Gabriela Souza Batista on 06/12/22.
//

import UIKit

class TableViewController: UIViewController {

    var tableViewModel: Ingredients = Ingredients(sections: [Section(name: "", ingredients: [""])])
    func ingredients() {

    }
    var tableViewIngredients = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        view.addSubview(tableViewIngredients)
        tableViewIngredients.delegate = self
        tableViewIngredients.dataSource = self
        tableViewIngredients.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableViewIngredients.isEditing = false
        self.tableViewIngredients.allowsMultipleSelectionDuringEditing = true
        tableViewIngredients.reloadData()
        tableViewModel = JSONIngredientsManager.instance.loadJsonIngredients()!
        print()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableViewIngredients.frame = view.bounds
    }
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewModel.sections.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel.sections[section].ingredients.count

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewIngredients.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tableViewModel.sections[indexPath.section].ingredients[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRow = tableView.cellForRow(at: indexPath)
        selectedRow?.accessoryType = (selectedRow?.accessoryType == .checkmark) ? .none : .checkmark
        selectedRow?.tintColor = UIColor(named: "green-02")
        selectedRow?.selectionStyle = .none
        print("selected item")

        // logica de seleçao de ingredients das sections
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return tableViewModel.sections[section].name
    }
}
