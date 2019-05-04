//
//  TableViewController.swift
//  TableView
//
//  Created by Crafter on 5/4/19.
//  Copyright © 2019 Crafter. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var cellId = -1
    
    var contactList = ContactList.contactList.contactListArray
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        contactList = ContactList.contactList.contactListArray
        tableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else {
            fatalError("Error")
        }

        cell.contact = contactList[indexPath.row]
        return cell
    }
 
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let chosenCell = tableView.cellForRow(at: indexPath)! as? TableViewCell {
            cellId = indexPath.row
            performSegue(withIdentifier: "ShowDetailSegue", sender: chosenCell)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetailSegue" {
            if let detaiViewController = segue.destination as? DetailViewController {
             detaiViewController.id = cellId
            }
        }
    }
}
