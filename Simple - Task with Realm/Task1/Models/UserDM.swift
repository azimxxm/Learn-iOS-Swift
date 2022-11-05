//
//  UserDM.swift
//  Task1
//
//  Created by Azimjon Abdurasulov on 29/10/22.
//

import Foundation
import RealmSwift

class Users: Object {
    @Persisted var email: String
    @Persisted var password: String

    convenience init(email: String, password: String) {
        self.init()
        self.email = email
        self.password = password
    }
}

let realm = try! Realm()
