//
//  FirstVC.swift
//  ProtocolLesson
//
//  Created by Azimjon on 23/09/22.
//

import UIKit

class FirstVC: UIViewController, SecendVCDelegate {

    @IBOutlet weak var firstVCUsername: UITextField!
    @IBOutlet weak var firstvcLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func firstVCNextButton(_ sender: UIButton) {
        let secendVC = SecendVC(nibName: "SecendVC", bundle: nil)
        secendVC.modalPresentationStyle = .fullScreen
        secendVC.delegate = self
        self.present(secendVC, animated: true)
        secendVC.secendVCTextLabel.text = firstVCUsername.text
    }
    func secendVCBtnPressed(with text: String?) {
        self.firstvcLabel.text = text
    }
    
}
