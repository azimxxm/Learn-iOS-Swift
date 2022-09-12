//
//  ViewController.swift
//  GestureReconizerApp
//
//  Created by Azimjon on 12/09/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var isMetalical1 = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        let gestureReconizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureReconizer)
    }

    @objc func changePic(){
        
        if isMetalical1 == true {
            imageView.image = UIImage(named: "metalical2")
            nameLabel.text = "Metalical 2"
            isMetalical1 = false
        } else {
            imageView.image = UIImage(named: "metalical1")
            nameLabel.text = "Metalical 1"
            isMetalical1 = true
        }
        
    }
    
}

