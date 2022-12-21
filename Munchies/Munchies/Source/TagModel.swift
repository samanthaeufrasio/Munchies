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
    let iconSelected: UIImage?
}

let veganTag = Tag(name: "Vegano", color: UIColor(named: "vegan"), icon: UIImage(named: "vegan"), iconSelected: UIImage(named: "veganSelected"))
let vegetarianTag = Tag(name: "Vegetariano", color: UIColor(named: "vegetarian"), icon: UIImage(named: "vegetarian"), iconSelected: UIImage(named: "vegetarianSelected"))
let glutenFreeTag = Tag(name: "Sem Glúten", color: UIColor(named: "glutenFree"), icon: UIImage(named: "glutenFree"), iconSelected: UIImage(named: "glutenFreeSelected"))
let lactoseFreeTag = Tag(name: "Sem Lactose", color: UIColor(named: "lactoseFree"), icon: UIImage(named: "lactoseFree"), iconSelected: UIImage(named: "lactoseFreeSelected"))

var tagArrayList: [Tag] = [veganTag, vegetarianTag, glutenFreeTag, lactoseFreeTag]
