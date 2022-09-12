//
//  SecendViewController.swift
//  SegueApp
//
//  Created by Azimjon on 11/09/22.
//

import UIKit

class SecendViewController: UIViewController {
    @IBOutlet weak var myLabelSecend: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = myName
    }
    

}
