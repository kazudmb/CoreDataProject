//
//  Candy+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by KazukiNakano on 2020/07/08.
//  Copyright © 2020 kazu. All rights reserved.
//
//

import Foundation
import CoreData


extension Candy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Candy> {
        return NSFetchRequest<Candy>(entityName: "Candy")
    }

    @NSManaged public var name: String?
    @NSManaged public var origin: Country?

    public var wrappedName: String {
        name ?? "Unknown Candy"
    }
}
