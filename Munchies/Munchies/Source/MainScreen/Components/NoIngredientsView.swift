//
//  SemIngredientesView.swift
//  Munchies
//
//  Created by Gabriela Souza Batista on 30/11/22.
//

import UIKit

class NoIngredientsView: UIView {

    lazy var stack: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.addArrangedSubview(self.imageEmptyState)
        stackView.addArrangedSubview(self.noIngredientsLabel)
        return stackView
    }()

    let imageEmptyState: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "logoTeste")
        image.layer.opacity = 0.5
        return image
    }()

    let noIngredientsLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.textColor = .systemGray
        label.text = "Sem ingredientes no momento..."
        return label
    }()

    

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        buildLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("Error")
    }
}
extension NoIngredientsView: ViewCoding {
    func setupView() { }

    func setupHierarchy() {
        self.addSubview(stack)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            stack.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: self.centerYAnchor),

        ])
    }
}
