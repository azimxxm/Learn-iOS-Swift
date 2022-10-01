//
//  RegisterVC.swift
//  NavigationVC
//
//  Created by Azimjon on 01/10/22.
//

import UIKit

protocol RegisterVCDelegate {
    func saveUserDelegate(user:User)
}

struct User {
    var name: String?
    var surName: String?
    var age: String?
    var email: String?
    var phone: String?

}




class RegisterVC: UIViewController {

    
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var surNameTF: UITextField!
    
    @IBOutlet weak var ageTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var phoneTF: UITextField!
    
    var name: String?
    var surName: String?
    var age: String?
    var email: String?
    var phone: String?

    
    @IBOutlet weak var btn: UIButton!
    var isEditView: Bool = false
    var delegate: RegisterVCDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if isEditView {
            title = "Edit View"
            btn.setTitle("Save", for: .normal)
        } else {
            title = "Register"
        }
        
        nameTF.text = name
        surNameTF.text = surName
        ageTF.text = age
        emailTF.text = email
        phoneTF.text = phone
        
    }

    @IBAction func btnPressed(_ sender: UIButton) {
        if isEditView {
            let user = User(
                name: nameTF.text,
                surName: surNameTF.text,
                age: ageTF.text,
                email: emailTF.text,
                phone: phoneTF.text
            )
            delegate?.saveUserDelegate(user: user)
            self.navigationController?.popViewController(animated: true)
                
            
        } else {
            let profileVC = ProfileVC(nibName: "ProfileVC", bundle: nil)
            profileVC.name = nameTF.text
            profileVC.surName = surNameTF.text
            profileVC.age = ageTF.text
            profileVC.email = emailTF.text
            profileVC.phone = phoneTF.text
            self.navigationController?.pushViewController(profileVC, animated: true)
        }
    }
    

}
