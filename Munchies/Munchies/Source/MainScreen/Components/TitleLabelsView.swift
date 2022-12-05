//
//  TitleLabelsView.swift
//  Munchies
//
//  Created by Gabriela Souza Batista on 02/12/22.
//

import UIKit

class TitleLabelsView: UIView {

    let titleLabel: UILabel = {
        let title = UILabel(frame: .zero)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.numberOfLines = 0
        title.text = "Escolha ingredientes"
        title.font = UIFont.systemFont(ofSize: 28, weight: .regular)

        return title
    }()

    let titleLabelTwo: UILabel = {
        let title = UILabel(frame: .zero)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.numberOfLines = 0
        title.text = "Ganhe uma receita"
        title.font = UIFont.systemFont(ofSize: 28, weight: .bold)


        return title
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        buildLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension TitleLabelsView: ViewCoding {
    func setupView() {
        self.backgroundColor = .white
    }

    func setupHierarchy() {
        self.addSubview(titleLabel)
        self.addSubview(titleLabelTwo)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: titleLabelTwo.topAnchor),

            titleLabelTwo.topAnchor.constraint(equalTo: titleLabel.bottomAnchor)

        ])
    }

}
