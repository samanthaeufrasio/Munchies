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
        view.layer.borderColor = UIColor.red.cgColor
        view.layer.cornerRadius = 12
        
        return view
        
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
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            filterView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            filterView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            filterView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            filterView.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    
}
