//
//  SecendVC.swift
//  ProtocolLesson
//
//  Created by Azimjon on 23/09/22.
//

import UIKit

class SecendVC: UIViewController {

    
    @IBOutlet weak var secendVCTextLabel: UILabel!
    
    @IBOutlet weak var secendVCTextfiled: UITextField!
    var delegate: SecendVCDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func secendVCBacButton(_ sender: Any) {
        self.delegate?.secendVCBtnPressed(with: secendVCTextfiled.text)
        self.dismiss(animated: true)
    }
}
