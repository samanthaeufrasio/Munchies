//
//  ButtonSearchRecepe.swift
//  Munchies
//
//  Created by Gabriela Souza Batista on 05/12/22.
//

import UIKit

class ButtonSearchRecipe: UIView {

    var didSearchRecipe: (() -> Void)?

    lazy var buttonSearch: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .bordered()
        button.layer.cornerRadius = 12
        button.setTitle("Pesquisar receita", for: .normal)
        button.setTitleColor(.white, for: .normal)
//        button.titleLabel = UIFont.systemFont(ofSize: 16)
        button.backgroundColor = UIColor(named: "green-01")
        button.addTarget(self, action: #selector(buttonRecipe(_:)), for: .touchUpInside)

        return button

    }()

    @objc func buttonRecipe(_: UIButton) {
        didSearchRecipe?()
        }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        buildLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension ButtonSearchRecipe: ViewCoding {
    func setupView() {

    }

    func setupHierarchy() {
        self.addSubview(buttonSearch)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            buttonSearch.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            buttonSearch.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }


}
