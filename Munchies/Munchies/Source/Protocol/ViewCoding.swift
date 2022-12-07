//
//  ViewCoding.swift
//  Munchies
//
//  Created by Gabriela Souza Batista on 07/12/22.
//

import Foundation

protocol ViewCoding: AnyObject {
    func setupView()
    func setupHierarchy()
    func setupConstraints()
}

extension ViewCoding {
    func buildLayout() {
        setupView()
        setupHierarchy()
        setupConstraints()
    }
}
