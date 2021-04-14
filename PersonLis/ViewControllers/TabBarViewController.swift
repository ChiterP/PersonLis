//
//  TabBarViewController.swift
//  PersonLis
//
//  Created by 18316409 on 13.04.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let dataManager = DataManager()
    var personsList = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createArraypersons()
        print ("TabBarViewController \(personsList)")
        sendTodata()
    }
    
    private func sendTodata() {
        
        guard let viewControllers = self.viewControllers else  {
            print("ds[jl")
            return
        }
        viewControllers.forEach {
            if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as! ContactListViewController
                userInfoVC.personsList = personsList
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
