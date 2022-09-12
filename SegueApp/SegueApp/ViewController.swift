//
//  ViewController.swift
//  SegueApp
//
//  Created by Azimjon on 11/09/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextFiled: UITextField!
    
    @IBOutlet weak var myLabel: UILabel!
    var userName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Lifecycle
        print("ViewDidLoad called")
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        print("ViewDidDisapper func called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("ViewWillDisapper func called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("ViewWillApper func called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("ViewDidApper func called")
    }
    
    

    @IBAction func nextClicked(_ sender: UIButton) {
        userName = nameTextFiled.text!
        performSegue(withIdentifier: "toSecendVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecendVC" {
            let destinationVC = segue.destination as! SecendViewController
            destinationVC.myName = userName
        }
    }
    
}

