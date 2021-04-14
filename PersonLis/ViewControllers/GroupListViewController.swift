//
//  GroupListViewController.swift
//  PersonLis
//
//  Created by 18316409 on 13.04.2021.
//

import UIKit

class GroupListViewController: UITableViewController {
    
    // MARK: - Public Properties
    let dataManager = DataManager()
    var personsList = [Person]()
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return personsList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsList[section].name + " " + personsList[section].surName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath)
        let person = personsList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.email
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
