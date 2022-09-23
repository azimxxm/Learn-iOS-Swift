//
//  FirstVC.swift
//  LearnAppDelegate
//
//  Created by Azimjon on 22/09/22.
//

import UIKit

class FirstVC: UIViewController, SecendVCDelegate {

    
    @IBOutlet weak var firstTextLabel: UILabel!
    @IBOutlet weak var usernameTextFiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBrown
    }
    
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        let secendVC = SecendVC(nibName: "SecendVC", bundle: nil)
        secendVC.modalPresentationStyle = .fullScreen
        secendVC.delegate = self
        present(secendVC, animated: true, completion: nil)
        secendVC.usernameLabel.text = usernameTextFiled.text
    }
    
    func secendVCBtnPressed(with text: String?) {
        self.firstTextLabel.text = text
    }

    
    

}
