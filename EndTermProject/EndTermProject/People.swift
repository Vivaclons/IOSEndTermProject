//
//  People.swift
//  EndTermProject
//
//  Created by Шынгыс Еркин on 11.12.2020.
//

import Foundation
import RealmSwift

class People: Object {
    @objc dynamic var login: String = ""
    @objc dynamic var password: String = ""
    @objc dynamic var username: String = ""
    @objc dynamic var cardNum: String = ""
    @objc dynamic var cvv: String = ""
    @objc dynamic var balance: String = ""
}
