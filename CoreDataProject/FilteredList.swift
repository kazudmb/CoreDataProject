//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by KazukiNakano on 2020/07/08.
//  Copyright © 2020 kazu. All rights reserved.
//

import SwiftUI

struct FilteredList: View {
    
    var fetchRequest: FetchRequest<Singer>
    var singers: FetchedResults<Singer> { fetchRequest.wrappedValue }
    
    var body: some View {
        List(fetchRequest.wrappedValue, id: \.self) { singer in
            Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
        }
    }
    
    init(filter: String) {
        fetchRequest = FetchRequest<Singer>(entity: Singer.entity(), sortDescriptors: [], predicate: NSPredicate(format: "lastName BEGINSWITH %@", filter))
    }
}
