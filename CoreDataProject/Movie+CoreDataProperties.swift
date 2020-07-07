//
//  Movie+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by KazukiNakano on 2020/07/07.
//  Copyright © 2020 kazu. All rights reserved.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var year: Int16
    @NSManaged public var director: String?
    @NSManaged public var title: String?

    public var wrappedTitle: String {
        title ?? "Unknown Title"
    }
}
