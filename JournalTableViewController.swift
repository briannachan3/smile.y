//
//  ViewController.swift
//  smile.y
//
//  Created by David Chan on 10/4/20.
//

import UIKit

class JournalTableViewController: UITableViewController {
    
    let cellReuseIdentifier = "JournalEntryCell"
    let journalEntrySegueIdentifier = "journalEntry"
    let newJournalEntrySegueIdentifier = "newJournalEntry"
    let journal = Journal(entries: (0..<1).map { JournalEntry(date: Date(), contents: "Journal entry \($0)") })
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return journal.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        if let label = cell.textLabel,
            let entry = journal.entry(indexPath.row) {
            label.text = "\(entry)"
        }
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == journalEntrySegueIdentifier {
            if let journalEntryViewController = segue.destination as? JournalEntryViewController,
                let cell = sender as? UITableViewCell,
                let indexPath = self.tableView.indexPath(for: cell),
                let entry = journal.entry(indexPath.row) {
                    journalEntryViewController.journalEntry = entry
            }
        } else if segue.identifier == newJournalEntrySegueIdentifier {
            if let newJournalEntryViewController = segue.destination as? NewJournalEntryViewController {
                newJournalEntryViewController.journal = journal
            }
        }
    }

}

