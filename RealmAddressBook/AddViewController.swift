//
//  AddViewController.swift
//  RealmAddressBook
//
//  Created by 張翔 on 2020/05/22.
//  Copyright © 2020 Sho Cho. All rights reserved.
//

import UIKit
import RealmSwift


class AddViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var kanaTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var phoneNumberTextField: UITextField!

    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addAddress() {
        let newAddress = Address()
        newAddress.name = nameTextField.text!
        newAddress.kana = kanaTextField.text!
        newAddress.age = Int(ageTextField.text!)!
        newAddress.phoneNumber = phoneNumberTextField.text!
        
        try! realm.write {
            realm.add(newAddress)
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel() {
        dismiss(animated: true, completion: nil)
    }
    

    

}
