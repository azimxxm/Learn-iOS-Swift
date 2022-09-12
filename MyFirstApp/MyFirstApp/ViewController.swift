//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Azimjon on 10/09/22.
//

import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var picker:UIImagePickerController?=UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func backButtonPressed(_ sender: Any) {
        imageView.image = UIImage(named: "metalical")
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        imageView.image = UIImage(named: "metalical2")
    }
    @IBAction func setButtonPressed(_ sender: Any) {
        
        backgroundImage.image = imageView.image
    }
    
    
    @IBAction func openImageButtonPressed(_ sender: UIButton) {
    }

    
}

