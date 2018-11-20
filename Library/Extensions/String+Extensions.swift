//
//  String+Extensions.swift
//  Playground
//
//  Created by Ariel Bogdziewicz on 20/11/2018.
//  Copyright © 2018 Ariel Bogdziewicz. All rights reserved.
//

import Foundation

extension String {
    
    var trim: String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
