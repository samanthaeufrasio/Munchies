//
//  RecepiesController.swift
//  Munchies
//
//  Created by Gabriela Souza Batista on 07/12/22.
//

import UIKit

class RecipeController: UIViewController {
    var recipeView = RecipeView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "green-03")
        view = recipeView
    }
}
