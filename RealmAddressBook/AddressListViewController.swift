//
//  ViewController.swift
//  RealmAddressBook
//
//  Created by 張翔 on 2020/05/22.
//  Copyright © 2020 Sho Cho. All rights reserved.
//

import UIKit
import RealmSwift


class AddressListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!

    let realm = try! Realm()
    let addresses = try! Realm().objects(Address.self).sorted(byKeyPath: "kana")
    var notificationToken: NotificationToken?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        notificationToken = addresses.observe { [weak self] _ in
            self?.tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return addresses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! AddressListTableViewCell
        cell.nameLabel.text = addresses[indexPath.row].name
        cell.kanaLabel.text = addresses[indexPath.row].kana
        cell.ageLabel.text = String(addresses[indexPath.row].age)
        cell.phoneNumberLabel.text = addresses[indexPath.row].phoneNumber
        return cell
    }
}



