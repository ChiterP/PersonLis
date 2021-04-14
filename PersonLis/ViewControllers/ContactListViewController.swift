//
//  ContactListViewController.swift
//  PersonLis
//
//  Created by 18316409 on 13.04.2021.
//

import UIKit

class ContactListViewController: UITableViewController {

    
    let dataManager = DataManager()
    var personsList = [Person]()
    var test1: String!

    override func viewDidLoad() {
        super.viewDidLoad()
//        createArraypersons()
        print ("ContactListViewController \(personsList)")
        print ("ContactListViewController \(String(describing: test1))")
    }

//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        print ("ContactListViewController \(personsList)")
//        print ("ContactListViewController \(String(describing: test1))")    }
    
    
    
//    private func createArraypersons() {
//        for _ in 0...9 {
//            guard let name = dataManager.names.randomElement() else {return}
//            guard let surName = dataManager.surNames.randomElement() else {return}
//            guard let phone = dataManager.pones.randomElement() else {return}
//            guard let email = dataManager.emails.randomElement() else {return}
//
//            personsList.append(Person.init(name: name, surName: surName, phone: phone, email: email))
//        }
//    }
    
    
    
    
//     MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactListCell", for: indexPath)
        let person = personsList[indexPath.row]
                
        var content = cell.defaultContentConfiguration()
        content.text = person.name + " " +  person.surName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailCV = segue.destination as? DetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personsList[indexPath.row]
        detailCV.person = person
        
//        guard let groupCV = segue.destination as? GroupListViewController else { return }
//        groupCV.grouptest = "test"
        
        }
}
