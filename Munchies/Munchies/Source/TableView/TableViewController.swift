//
//  TableViewController.swift
//  Munchies
//
//  Created by Gabriela Souza Batista on 06/12/22.
//

import UIKit

class TableViewController: UIViewController {

//    var tableViewModel = TableViewModel()
    func ingredients() {

    }
    let tableViewIngredients = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableViewIngredients)
//        tableViewIngredients.delegate = self
//        tableViewIngredients.dataSource = self
        

    }
}

//extension TableViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    }
//
//
//}
