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
    
    func getFirstPerson() {
        AF.request("https://swapi.co/api/people/1/").response { response in
            print("Request: \(String(describing: response.request))")
            print("Response: \(String(describing: response.response))")
            print("Error: \(String(describing: response.error))")
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)")
            }
        }
    }
}

//struct StarWarsPerson {
//    var name: String,
//    var someOtherValue: String
//}
