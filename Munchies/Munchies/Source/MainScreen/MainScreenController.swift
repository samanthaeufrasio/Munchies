//
//  MainScreenController.swift
//  Munchies
//
//  Created by Gabriela Souza Batista on 29/11/22.
//

import UIKit

class MainScreenController: UIViewController {

    var mainScreenView = MainScreenView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "green-01")
        view = mainScreenView
    }

}
