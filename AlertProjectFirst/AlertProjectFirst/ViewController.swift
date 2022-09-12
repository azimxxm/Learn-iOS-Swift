//
//  ViewController.swift
//  AlertProjectFirst
//
//  Created by Azimjon on 11/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordagainText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: UIButton) {
        
        if usernameText.text == "" {
            makeAlerFunc(title: "Error", message: "Username not found!")
        } else if passwordText.text == "" {
            makeAlerFunc(title: "Error", message: "\(usernameText.text!) Password not found!")
        } else if passwordText.text != passwordagainText.text {
            makeAlerFunc(title: "Error", message: "\(usernameText.text!) Password do not match")
        }else {
            makeAlerFunc(title: "Success", message: "\(usernameText.text!) successfull created")
        }
    
        func makeAlerFunc(title:String, message:String){
            let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

