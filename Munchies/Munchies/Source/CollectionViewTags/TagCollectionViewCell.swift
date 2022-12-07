//
//  TagCollectionViewCell.swift
//  Munchies
//
//  Created by Vinícius Cavalcante on 07/12/22.
//

import UIKit

class TagCollectionViewCell: UICollectionViewCell {
    static let identifier: String = "TagCollectionViewCell"
    
    let filterView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .none
        view.layer.borderWidth = 2.0
        view.layer.borderColor = UIColor(named: "green-02")?.cgColor
        view.layer.cornerRadius = 12
        
        return view
        
    }()
    
    let filterLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sem lactose"
        label.textColor = UIColor(named: "green-02")
        label.backgroundColor = .clear
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
//        backgroundColor = .systemRed
        setupView()
        setupHierarchy()
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension TagCollectionViewCell: ViewCoding {
    func setupView() {}
    
    func setupHierarchy() {
        contentView.addSubview(filterView)
        contentView.addSubview(filterLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            filterView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            filterView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            filterView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            filterView.leadingAnchor.constraint(equalTo: filterLabel.leadingAnchor, constant: -8),
            filterView.trailingAnchor.constraint(equalTo: filterLabel.trailingAnchor, constant: 8),
            filterView.heightAnchor.constraint(equalToConstant: 32),
            
            filterLabel.topAnchor.constraint(equalTo: filterView.topAnchor),
            filterLabel.centerXAnchor.constraint(equalTo: filterView.centerXAnchor),
            filterLabel.bottomAnchor.constraint(equalTo: filterView.bottomAnchor)
        ])
    }
    
    
}
