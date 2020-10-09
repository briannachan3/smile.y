//
//  JournalEntry.swift
//  smile.y
//
//  Created by David Chan on 10/5/20.
//

import Foundation

class JournalEntry: CustomStringConvertible {
    
    let date: Date
    let contents: String
    let dateFormatter = DateFormatter()
    var description: String {
        return dateFormatter.string(from: date)
    }
    
    init(date: Date, contents: String) {
        self.date = date
        self.contents = contents
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
    }
    
}

