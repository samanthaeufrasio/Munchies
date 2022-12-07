//
//  RecepiesView.swift
//  Munchies
//
//  Created by Gabriela Souza Batista on 07/12/22.
//

import UIKit

class RecipeView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        buildLayout()

    }

    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ingredientes"
        label.font = UIFont.systemFont(ofSize: 34, weight: .bold)
        label.numberOfLines = 0
        return label
    }()

    let labelIngredients: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = " 1 quilograma de arraia limpa e cortada \n 2 und de cebola \n 2 und de tomate \n 2 und de pimentão \n 4 dentes de alho picado \n 4 colheres de sopa de azeite \n 200 ml de leite de coco \n 1 maço de cebolinha \n 1 maço de coentro \n sal à gosto"

        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.numberOfLines = 0
        return label
    }()

    let preparationTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Modo de Preparo"
        label.font = UIFont.systemFont(ofSize: 34, weight: .bold)
        label.numberOfLines = 0
        return label
    }()

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension RecipeView: ViewCoding {
    func setupView() {
        self.backgroundColor = .white
    }

    func setupHierarchy() {
        self.addSubview(titleLabel)
        self.addSubview(labelIngredients)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: UIScreen.main.bounds.height/10),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 8),
            labelIngredients.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 11),
            labelIngredients.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            labelIngredients.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 8),
        ])
    }

}
