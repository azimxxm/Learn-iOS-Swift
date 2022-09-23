//
//  SecendVC.swift
//  LearnAppDelegate
//
//  Created by Azimjon on 22/09/22.
//

import UIKit

class SecendVC: UIViewController {
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var textLabel: UITextField!
    
    var delegate: SecendVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray3
    }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.delegate?.secendVCBtnPressed(with: textLabel.text)
        self.dismiss(animated: true, completion: nil)
    }

    
}
