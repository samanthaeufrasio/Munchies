//
//  ViewController.swift
//  Munchies
//
//  Created by Vinícius Cavalcante on 21/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        var aloMubdo = JSONManager.instance.loadjson()
        for i in 0..<aloMubdo!.endIndex {
            print(aloMubdo?[i].nome)
        }
    }


}

