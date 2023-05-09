//
//  DataEntryModel.swift
//  
//
//  Created by Chicmic on 08/05/23.
//

import Foundation

struct DataEntry: Identifiable {
    let id = UUID()
    let date: String
    let score: Double
}
