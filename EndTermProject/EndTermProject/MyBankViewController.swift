//
//  MyBankViewController.swift
//  EndTermProject
//
//  Created by Шынгыс Еркин on 11.12.2020.
//

import UIKit
import RealmSwift

class MyBankViewController: UIViewController {
    let photoController = UIImagePickerController()
    let realm = try! Realm()
    var user = Users()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let result = realm.objects(Users.self)
        usernameLabel.text = result[0].username
        phonelabel.text = result[0].login
        balanceLabel.text = result[0].balance
        cvvLabel.text = result[0].cvv
        cardnumlabel.text = result[0].cardNum
    }
    
    @IBAction func selectButton(_ sender: Any) {
        photoController.delegate = self
        photoController.sourceType = .photoLibrary
        self.present(photoController, animated: true, completion: nil)
    }
    @IBAction func takeButton(_ sender: Any) {
    }
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var cvvLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    @IBOutlet weak var cardnumlabel: UILabel!
    @IBOutlet weak var phonelabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
  }

extension MyBankViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        
        userImage.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        picker.dismiss(animated: true, completion: nil)

    }
}
