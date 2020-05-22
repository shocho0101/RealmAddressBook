//
//  AddViewController.swift
//  RealmAddressBook
//
//  Created by 張翔 on 2020/05/22.
//  Copyright © 2020 Sho Cho. All rights reserved.
//

import UIKit


class AddViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var kanaTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var phoneNumberTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addAddress() {
        
    }
    
    @IBAction func cancel() {
        dismiss(animated: true, completion: nil)
    }
    

    

}
