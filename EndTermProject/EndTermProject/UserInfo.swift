//
//  UserInfo.swift
//  EndTermProject
//
//  Created by Шынгыс Еркин on 11.12.2020.
//

import Foundation
import RealmSwift

class UserInfo: Object{
    @objc dynamic var username = ""
    @objc dynamic var cardNum = ""
    @objc dynamic var cvv = ""
    @objc dynamic var balance = ""
}
