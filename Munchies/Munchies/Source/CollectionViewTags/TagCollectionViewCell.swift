//
//  TagCollectionViewCell.swift
//  Munchies
//
//  Created by Vinícius Cavalcante on 07/12/22.
//

import UIKit

class TagCollectionViewCell: UICollectionViewCell {
    static let identifier: String = "TagCollectionViewCell"
    
    var tagList: [Tag] = tagArrayList
    
    let filterView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .none
        view.layer.borderWidth = 2.0
//        view.layer.borderColor = UIColor(named: "green-02")?.cgColor
        view.layer.cornerRadius = 16
        
        return view
        
    }()
    
    let filterLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18)
//        label.text = "Sem lactose"
//        label.textColor = UIColor(named: "green-02")
        label.backgroundColor = .clear
        
        return label
    }()
    
    let filterImage: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.sizeToFit()
        image.image = UIImage(named: "vegan")
        return image
    }()
    
    lazy var filterStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.spacing = 4
//        stack.backgroundColor = .red
        stack.addArrangedSubview(self.filterImage)
        stack.addArrangedSubview(self.filterLabel)
        stack.axis = .horizontal
        return stack
    }()
    
    func config(with indexPath: IndexPath) {
        filterLabel.text = tagList[indexPath.item].name
        filterLabel.textColor = tagList[indexPath.item].color
        filterView.layer.borderColor = tagList[indexPath.item].color?.cgColor
        filterImage.image = tagList[indexPath.item].icon
    }
    
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
        filterView.addSubview(filterStack)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            filterView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            filterView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            filterView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            filterView.leadingAnchor.constraint(equalTo: filterStack.leadingAnchor, constant: -8),
            filterView.trailingAnchor.constraint(equalTo: filterStack.trailingAnchor, constant: 8),
            filterView.heightAnchor.constraint(equalToConstant: 32),

            filterStack.centerXAnchor.constraint(equalTo: filterView.centerXAnchor),
            filterStack.centerYAnchor.constraint(equalTo: filterView.centerYAnchor)
        ])
    }
}
