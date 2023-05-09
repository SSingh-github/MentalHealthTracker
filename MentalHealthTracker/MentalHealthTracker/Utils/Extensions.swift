//
//  extensions.swift
//  
//
//  Created by Chicmic on 08/05/23.
//

import Foundation

extension Date {
    func formattedDateString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = Constants.StringFormats.dateFormat
        return formatter.string(from: self)
    }
}
