//
//  MainScreenController.swift
//  Munchies
//
//  Created by Gabriela Souza Batista on 29/11/22.
//

//import UIKit
//
//class MainScreenController: UIViewController {
//
//    let searchBarController = SearchBarController()
//
//    let titleLabelsView: TitleLabelsView = {
//        let titleView = TitleLabelsView()
//        titleView.translatesAutoresizingMaskIntoConstraints = false
//        return titleView
//    }()
//
//    let noIngredientsView: NoIngredientsView = {
//        let noIngredients = NoIngredientsView()
//        noIngredients.translatesAutoresizingMaskIntoConstraints = false
//        return noIngredients
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        buildLayout()
//    }
//
//}
//extension MainScreenController: ViewCoding {
//    func setupView() {
//        view.backgroundColor = .white
//
//    }
//
//    func setupHierarchy() {
//        view.addSubview(titleLabelsView)
////        view.addSubview(searchBarController)
//        view.addSubview(noIngredientsView)
//    }
//
//    func setupConstraints() {
//        NSLayoutConstraint.activate([
//            titleLabelsView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: UIScreen.main.bounds.height/14),
//            titleLabelsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
//            titleLabelsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8),
//            titleLabelsView.bottomAnchor.constraint(equalTo: noIngredientsView.topAnchor),
//
//            noIngredientsView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            noIngredientsView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//        ])
//    }
//
//}
