//
//  JournalEntryViewController.swift
//  smile.y
//
//  Created by David Chan on 10/5/20.
//

import UIKit

class JournalEntryViewController: UIViewController {
    
    @IBOutlet weak var journalEntryContents: UITextView!
    var journalEntry: JournalEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let journalEntry = journalEntry {
            journalEntryContents.text = journalEntry.contents
            navigationItem.title = "Journal Entry #1" //journalEntry.description
        }
    }
    
}
