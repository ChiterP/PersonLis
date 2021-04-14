//
//  TabBarViewController.swift
//  PersonLis
//
//  Created by 18316409 on 13.04.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    // MARK: - Public Properties
    let dataManager = DataManager()
    var personsList = [Person]()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createArraypersons()
        sendTodata()
    }
    
    // MARK: - Private Methods
    private func sendTodata() {
        
        guard let viewControllers = self.viewControllers else  {return}
        viewControllers.forEach {
            if let navigationVC = $0 as? UINavigationController {
                if let topVC = navigationVC.topViewController as? ContactListViewController {
                    topVC.personsList = personsList
                }
                if let topVC = navigationVC.topViewController as? GroupListViewController {
                    topVC.personsList = personsList
                }
            }
        }
    }
    
    private func createArraypersons() {
        for _ in 0...9 {
            guard let name = dataManager.names.randomElement() else {return}
            guard let surName = dataManager.surNames.randomElement() else {return}
            guard let phone = dataManager.pones.randomElement() else {return}
            guard let email = dataManager.emails.randomElement() else {return}
            
            personsList.append(Person.init(name: name, surName: surName, phone: phone, email: email))
        }
    }
}
