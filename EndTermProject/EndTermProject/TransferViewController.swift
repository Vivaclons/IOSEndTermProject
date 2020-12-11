//
//  TransferViewController.swift
//  EndTermProject
//
//  Created by Шынгыс Еркин on 11.12.2020.
//

import UIKit
import ContactsUI
import RealmSwift

class TransferViewController: UIViewController {
    let contactsController = CNContactPickerViewController()
    var user = Users()
    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sendButton(_ sender: Any) {
        print("Success");
    }
    
    @IBOutlet weak var contactNumberLabel: UITextField!
    
    @IBOutlet weak var sumlabel: UITextField!
    @IBAction func contactButton(_ sender: Any) {
        contactsController.delegate = self
        self.present(contactsController, animated: true, completion: nil)
    }
}

extension TransferViewController : CNContactPickerDelegate{
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact) {
        self.contactNumberLabel.text = contact.phoneNumbers[0].value.stringValue
    }
}
