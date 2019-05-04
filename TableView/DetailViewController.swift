//
//  DetailViewController.swift
//  TableView
//
//  Created by Crafter on 5/4/19.
//  Copyright © 2019 Crafter. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var contactPhoto: UIImageView! {
        didSet{
            guard let image = contact?.photoName else {return}
            contactPhoto.image = UIImage(named: image)
        }
    }
    @IBOutlet weak var contactName: UILabel! {
        didSet {
            contactName.text = contact?.name
        }
    }
    @IBOutlet weak var contactCompany: UILabel! {
        didSet{
            contactCompany.text = contact?.company
        }
    }
    @IBOutlet weak var contactPhone: UILabel! {
        didSet{
            contactPhone.text = contact?.phone
        }
    }
    var contact: Contact?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(editContact(sender: )))
    }
    
//    @objc func editContact(sender: UIBarButtonItem){
//        performSegue(withIdentifier: "EditContact", sender: sender)
//    }
//
}

