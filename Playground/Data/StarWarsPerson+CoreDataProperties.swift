//
//  StarWarsPerson+CoreDataProperties.swift
//  
//
//  Created by kkubicki on 02/07/2019.
//
//

import Foundation
import CoreData


extension StarWarsPerson {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<StarWarsPerson> {
        return NSFetchRequest<StarWarsPerson>(entityName: "StarWarsPerson")
    }

    @NSManaged public var name: String?

}
