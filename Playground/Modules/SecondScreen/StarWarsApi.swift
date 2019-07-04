//
//  StarWarsApi.swift
//  Playground
//
//  Created by kkubicki on 01/07/2019.
//  Copyright © 2019 Ariel Bogdziewicz. All rights reserved.
//

import Foundation
import Alamofire

class StarWarsApi {
    
    func getFirstPerson(completionHandler: @escaping ((StarWarsPeron?) -> Void)) {
        
        let number = Int.random(in: 1...5)
        
        AF.request("https://swapi.co/api/people/\(number)").response { response in
            print("Request: \(String(describing: response.request))")
            print("Response: \(String(describing: response.response))")
            print("Error: \(String(describing: response.error))")
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                let starWarsPeron = try? JSONDecoder().decode(StarWarsPeron.self, from: Data(utf8Text.utf8))
                completionHandler(starWarsPeron)
            }
        }
    }
}

// MARK: - StarWarsPeron
struct StarWarsPeron: Codable {
    let name, height, mass, hairColor: String
    let skinColor, eyeColor, birthYear, gender: String
    let homeworld: String
    let films, species, vehicles, starships: [String]
    let created, edited: String
    let url: String
    
    enum CodingKeys: String, CodingKey {
        case name, height, mass
        case hairColor = "hair_color"
        case skinColor = "skin_color"
        case eyeColor = "eye_color"
        case birthYear = "birth_year"
        case gender, homeworld, films, species, vehicles, starships, created, edited, url
    }
}
