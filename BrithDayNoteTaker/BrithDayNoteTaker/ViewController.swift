//
//  ViewController.swift
//  BrithDayNoteTaker
//
//  Created by Azimjon on 11/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextFiled: UITextField!
    
    @IBOutlet weak var brithdayTextFiled: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var brithdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storeName = UserDefaults.standard.object(forKey: "name")
        let storeBrithday = UserDefaults.standard.object(forKey: "brithday")
        
        if let myName = storeName as? String {
            nameLabel.text = "Name: \(myName)"
        }
        if let myBrithday = storeBrithday as? String {
            brithdayLabel.text = "Brithday: \(myBrithday)"
        }
    }
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        UserDefaults.standard.set(nameTextFiled.text!, forKey: "name")
        UserDefaults.standard.set(brithdayTextFiled.text!, forKey: "brithday")
        
        nameLabel.text = "Name: \(nameTextFiled.text!)"
        brithdayLabel.text = "Brithday: \(brithdayTextFiled.text!)"
    }
    
    @IBAction func deleteButtonPressed(_ sender: UIButton) {
        let storeName = UserDefaults.standard.object(forKey: "name")
        let storeBrithday = UserDefaults.standard.object(forKey: "brithday")
        if (storeName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        
        if (storeBrithday as? String) != nil  {
            UserDefaults.standard.removeObject(forKey: "brithday")
            brithdayLabel.text = "Brithday: "
        }
        
    }
    
}

