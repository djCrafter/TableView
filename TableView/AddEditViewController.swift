	//
//  AddEditViewController.swift
//  TableView
//
//  Created by Crafter on 5/4/19.
//  Copyright © 2019 Crafter. All rights reserved.
//

import UIKit

class AddEditViewController: UIViewController {

    @IBOutlet weak var contactName: UITextField!
    @IBOutlet weak var companyName: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    
    var contact: Contact? = nil
    var id: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(saveContact(sender: )))
        loadData()
    }
    
    func loadData() {
        if contact != nil {
            contactName.text = contact?.name
            companyName.text = contact?.company
            phoneNumber.text = contact?.phone
        }
    }
    
    
    @objc func saveContact(sender: UIBarButtonItem){
        if contact == nil {
            let newContact = Contact(name: contactName.text ?? "", company: companyName.text ?? "", phone: phoneNumber.text ?? "", photoName: "face8g")
            ContactList.contactList.contactListArray.append(newContact)
        }
        else{
             ContactList.contactList.contactListArray[id ?? 0].name = contactName.text
             ContactList.contactList.contactListArray[id ?? 0].company = companyName.text
             ContactList.contactList.contactListArray[id ?? 0].phone = phoneNumber.text
        }
            navigationController?.popViewController(animated: true)
    }
    

    
}
