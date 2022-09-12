//
//  ViewController.swift
//  SingleViewConstrent
//
//  Created by Azimjon on 11/09/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width_ = view.frame.size.width
        let height_ = view.frame.size.height
        
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width_ * 0.5 - width_ * 0.8 / 2, y: height_ * 0.5 - 50/2, width: width_ * 8, height: 50)
        view.addSubview(myLabel)
        
        
        let myButton = UIButton()
        myButton.titleLabel?.text = "Salom"
        myButton.frame = CGRect(x: 100, y: 100, width: 200, height: 60)
        view.addSubview(myButton)
        
        
        
    }
    


}

