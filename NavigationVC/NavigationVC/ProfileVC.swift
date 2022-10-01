//
//  ProfileVC.swift
//  NavigationVC
//
//  Created by Azimjon on 01/10/22.
//

import UIKit

class ProfileVC: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var surNameLBL: UILabel!
    @IBOutlet weak var ageLBL: UILabel!
    @IBOutlet weak var emailLBL: UILabel!
    @IBOutlet weak var phoneLBL: UILabel!
    @IBOutlet weak var nameLBL: UILabel!
    
    var image: String?
    var name: String?
    var surName: String?
    var age: String?
    var email: String?
    var phone: String?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        nameLBL.text = name
        surNameLBL.text = surName
        ageLBL.text = age
        emailLBL.text = email
        phoneLBL.text = phone
        
        let edit = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(editButton))
        navigationItem.setRightBarButtonItems([edit], animated: true)
    }
    
    @objc func editButton(){
        let registerVC = RegisterVC(nibName: "RegisterVC", bundle: nil)
        registerVC.isEditView = true
        registerVC.delegate = self
        registerVC.name = nameLBL.text
        registerVC.surName = surNameLBL.text
        registerVC.age = ageLBL.text
        registerVC.email = emailLBL.text
        registerVC.phone = phoneLBL.text
        self.navigationController?.pushViewController(registerVC, animated: true)
    }

}


// MARK: - RegisterVCDelegate -

extension ProfileVC: RegisterVCDelegate {
    func saveUserDelegate(user: User) {
        nameLBL.text = user.name
        surNameLBL.text = user.surName
        ageLBL.text = user.age
        emailLBL.text = user.email
        phoneLBL.text = user.phone
    }
    
    
}

