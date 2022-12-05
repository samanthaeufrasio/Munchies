//
//  SearchBarController.swift
//  Munchies
//
//  Created by Gabriela Souza Batista on 05/12/22.
//

import  UIKit
class ResultsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
    }
}

class SearchBarController: UIViewController, UISearchResultsUpdating {

    let buttonSearchRecipe: ButtonSearchRecipe = {
        let buttonSearch = ButtonSearchRecipe()
        buttonSearch.translatesAutoresizingMaskIntoConstraints = false
        return buttonSearch
    }()
    
    let titleLabelsView: TitleLabelsView = {
        let titleView = TitleLabelsView()
        titleView.translatesAutoresizingMaskIntoConstraints = false
        return titleView
    }()

    let noIngredientsView: NoIngredientsView = {
        let noIngredients = NoIngredientsView()
        noIngredients.translatesAutoresizingMaskIntoConstraints = false
        return noIngredients
    }()

    let searchController = UISearchController(searchResultsController: ResultsVC())

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        buildLayout()
        title = "Munchies"
        searchController.searchBar.placeholder = "Escolher ingrediente"
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
//        navigationController?.navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        let vc = searchController.searchResultsController as? ResultsVC
        vc?.view.backgroundColor = .yellow
        print(text)
    }
}
extension SearchBarController: ViewCoding {
    func setupView() {

    }

    func setupHierarchy() {
        view.addSubview(titleLabelsView)
        view.addSubview(noIngredientsView)
        view.addSubview(buttonSearchRecipe)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabelsView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: UIScreen.main.bounds.height/50),
            titleLabelsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            titleLabelsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8),
            titleLabelsView.bottomAnchor.constraint(equalTo: noIngredientsView.topAnchor),

            noIngredientsView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            noIngredientsView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            noIngredientsView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            buttonSearchRecipe.topAnchor.constraint(equalTo: noIngredientsView.bottomAnchor),
            buttonSearchRecipe.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            buttonSearchRecipe.centerXAnchor.constraint(equalTo: view.centerXAnchor)

        ])
    }
}
