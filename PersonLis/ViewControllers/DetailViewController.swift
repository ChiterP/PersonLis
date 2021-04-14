//
//  DetailViewController.swift
//  PersonLis
//
//  Created by 18316409 on 13.04.2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if person != nil { fullNameLabel.text = person.name + " " + person.surName}
        if person != nil { emailLabel.text = "Email: " + person.email }
        if person != nil { phoneLabel.text = "Phone: " + person.phone }
    }
}
