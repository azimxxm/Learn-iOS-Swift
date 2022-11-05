//
//  LoginVC.swift
//  Task1
//
//  Created by Azimjon Abdurasulov on 28/10/22.
//

import RealmSwift
import UIKit

class LoginVC: UIViewController {
    @IBOutlet var taskLbl: UILabel!
    @IBOutlet var welcomLbl: UILabel!
    @IBOutlet var emailTF: UITextField!
    @IBOutlet var socialAtuhStack: UIStackView!
    @IBOutlet var signInbtn: UIButton!
    @IBOutlet var passwordTF: UITextField!

    var userType: UserType?
    var userDM: Users?
    var userIdex: Int?
    var delegate: DataReloadDelegate?
    var defaults = UserDefaults.standard
    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()
        chekUser()
    }

    @IBAction func signInBtnPressed(_ sender: UIButton) {
        switch userType {
        case .edit:
            editUser()
        case .add:
            addUser()

        case .delete:
            deleteUser()

        case .login:
            authUser()

        case .register:
            registerUser()
        default:
            print("User type not found")
        }
    }

    func authUser() {
        if let email = emailTF.text, let password = passwordTF.text {
            let users = realm.objects(Users.self)
            for user in users {
                if email == user.email, password == user.password {
                    let mainVC = MainVC(nibName: "MainVC", bundle: nil)
                    navigationController?.pushViewController(mainVC, animated: true)
                }
            }
        }
    }

    func addUser() {
        if emailTF.text != "", passwordTF.text != "" {
            let user = Users(email: emailTF.text!, password: passwordTF.text!)
            do {
                try realm.write {
                    realm.add(user)
                    delegate?.reloadData()
                    dismiss(animated: true)
                }
            } catch let error as NSError {
                print("\(error)🤪")
            }
        } else {
            dismiss(animated: true)
        }
    }

    func editUser() {
        let users = realm.objects(Users.self)
        let getUser = users[userIdex!]
        do {
            try! realm.write {
                getUser.email = emailTF.text!
                getUser.password = passwordTF.text!
                delegate?.reloadData()
                self.dismiss(animated: true)
            }
        }
    }

    func registerUser() {
        if let email = emailTF.text, let password = passwordTF.text {
            do {
                try realm.write {
                    realm.add(Users(email: email, password: password))
                    self.navigationController?.popViewController(animated: true)
                }
            } catch let error as NSError {
                print("\(error)🤪")
            }
        }
        delegate?.reloadData()
        dismiss(animated: true)
    }

    func deleteUser() {
        let userRealm = realm.objects(Users.self)
        let getUser = userRealm[userIdex!]
        do {
            try realm.write {
                realm.delete(getUser)
            }
        } catch let error as NSError {
            print("\(error)🤪")
        }
        delegate?.reloadData()
        dismiss(animated: true)
    }

    func chekUser() {
        if userDM != nil {
            emailTF.text = userDM?.email
            passwordTF.text = userDM?.password
        }

        switch userType {
        case .add:
            setData(type: .add)

        case .edit:
            setData(type: .edit)

        case .delete:
            setData(type: .delete)

        case .register:
            setData(type: .register)

        default:
            userType = .login
        }
    }

    func setData(type: UserType) {
        taskLbl.text = "\(type.rawValue.capitalized) User"
        signInbtn.setTitle(type.rawValue, for: .normal)
        socialAtuhStack.isHidden = true
        welcomLbl.text = (userDM?.email == nil) ? "Create new User" : "User email: \(userDM?.email ?? "")"
    }

    @IBAction func signUpBtnPressed(_ sender: UIButton) {
        let loginVC = LoginVC(nibName: "LoginVC", bundle: nil)
        loginVC.userType = .register
        navigationController?.pushViewController(loginVC, animated: true)
    }
}
