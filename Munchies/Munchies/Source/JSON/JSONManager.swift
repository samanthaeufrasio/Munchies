//
//  AfroditeJson.swift
//  Munchies
//
//  Created by Gabriela Souza Batista on 25/11/22.
//

import Foundation

class JSONManager {

    static let instance = JSONManager()

    func loadjson() -> [Afrodite]? {
        if let url = Bundle.main.url(forResource: "afrodite", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData: [Afrodite] = try decoder.decode([Afrodite].self, from: data)
//                print(jsonData)
                return jsonData
            } catch {
                print(error)
            }
        }
        return nil
    }

    private init() {}

}
