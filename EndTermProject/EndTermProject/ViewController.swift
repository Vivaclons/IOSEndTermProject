//
//  ViewController.swift
//  EndTermProject
//
//  Created by Шынгыс Еркин on 11.12.2020.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    var user = Users()
    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()
                
        user.login = "707"
        user.password = "serkyn00"
        user.username = "Yerkyn Shynggys"
        user.cardNum = "12345678901234"
        user.cvv = "314"
        user.balance = "1 000 000"

        try! realm.write{
            realm.add(user)
        }
        
        txtLabel.isHidden = true
        loginButton.isEnabled = false
    }
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var txtLabel: UILabel!
    
    @IBOutlet weak var numberField: UITextField!
    
    @IBAction func checkButton(_ sender: Any) {
        txtLabel.isHidden = true
        let result = realm.objects(Users.self)
        if(numberField.text == result[0].login){
            if(passwordField.text == result[0].password){
                loginButton.isEnabled = true
            } else {
                txtLabel.isHidden = false
                txtLabel.text = "Your password wrong"
            }
        }else{
            txtLabel.isHidden = false
            txtLabel.text = "Your number phone wrong"
        }
    }
    
}

