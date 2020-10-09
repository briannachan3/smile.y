//
//  Journal.swift
//  smile.y
//
//  Created by David Chan on 10/5/20.
//

import Foundation
class Journal {
    
    private var entries: [JournalEntry]
    var count: Int {
        return entries.count
    }

    init(entries: [JournalEntry]) {
        self.entries = entries
    }

    func addEntry(_ entry: JournalEntry) {
        entries.append(entry)
    }
    
    func entry(_ index: Int) -> JournalEntry? {
        if index >= 0 && index < count {
            return entries[index]
        } else {
            return nil
        }
    }
    
}
