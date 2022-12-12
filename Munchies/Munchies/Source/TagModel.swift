//
//  TagModel.swift
//  Munchies
//
//  Created by Vinícius Cavalcante on 11/12/22.
//

import Foundation
import UIKit

struct Tag {
    let name: String
    let color: UIColor?
    let icon: UIImage?
    let isSelected: Bool
}

let veganTag = Tag(name: "Vegano", color: UIColor(named: "vegan"), icon: UIImage(named: "vegan"), isSelected: false)
let vegetarianTag = Tag(name: "Vegetariano", color: UIColor(named: "vegetarian"), icon: UIImage(named: "vegetarian"), isSelected: false)
let glutenFreeTag = Tag(name: "Sem Glúten", color: UIColor(named: "glutenFree"), icon: UIImage(named: "glutenFree"), isSelected: false)
let lactoseFreeTag = Tag(name: "Sem Lactose", color: UIColor(named: "lactoseFree"), icon: UIImage(named: "lactoseFree"), isSelected: false)

var tagArrayList: [Tag] = [veganTag, vegetarianTag, glutenFreeTag, lactoseFreeTag]
