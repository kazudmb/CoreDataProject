//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by KazukiNakano on 2020/07/08.
//  Copyright © 2020 kazu. All rights reserved.
//

import SwiftUI

struct FilteredList: View {
    
    @FetchRequest(entity: Singer.entity(), sortDescriptors: [], predicate: NSPredicate(format: "lastName BEGINSWITH %@", "A")) var singers: FetchedResults<Singer>
    
    var body: some View {
        List {
            ForEach(singers, id: \.self) { singer in
                Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
            }
        }
    }
}
