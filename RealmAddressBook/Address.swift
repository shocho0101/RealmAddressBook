//
//  Address.swift
//  RealmAddressBook
//
//  Created by 張翔 on 2020/05/23.
//  Copyright © 2020 Sho Cho. All rights reserved.
//

import Foundation
import RealmSwift

class Address: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var kana: String = ""
    @objc dynamic var age: Int = 0
    @objc dynamic var phoneNumber: String = ""
}
