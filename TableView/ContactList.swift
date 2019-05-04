//
//  ContactList.swift
//  TableView
//
//  Created by Crafter on 5/4/19.
//  Copyright © 2019 Crafter. All rights reserved.
//

import Foundation


class ContactList {
    
 public static var contactList = ContactList()
 public var contactListArray = Array<Contact>()

    init() {
        
        contactListArray.append(Contact(name: "Nikolai Ivanov", company: "MetIvest", phone: "+380631054408", photoName: "face1m"))
        contactListArray.append(Contact(name: "Evgeniy Nikonov", company: "DTEK", phone: "+380685321224", photoName: "face2m"))
        contactListArray.append(Contact(name: "Sergei Petrov", company: "DMR-Company", phone: "+380996321223", photoName: "face3m"))
        contactListArray.append(Contact(name: "Dmitriy Kylikov", company: "ISD", phone: "+380675642136", photoName: "face4m"))
        contactListArray.append(Contact(name: "Pavel Artemiev", company: "EPAM", phone: "+380645642132", photoName: "face5m"))
        
    }
}
