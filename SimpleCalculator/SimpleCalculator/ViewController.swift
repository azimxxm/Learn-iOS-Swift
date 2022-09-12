//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Azimjon on 10/09/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secendText: UITextField!
    
    var result:Int = 0
    
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumClicked(_ sender: UIButton) {
        if let firstNamber = Int(firstText.text!) {
            if let secendNumber = Int(secendText.text!) {
                result = firstNamber + secendNumber
                resultLabel.text = "\(result)"
            }
            
        }
                
    }
    
    @IBAction func minusClicked(_ sender: UIButton) {
        if let firstNamber = Int(firstText.text!) {
            if let secendNumber = Int(secendText.text!) {
                result = firstNamber - secendNumber
                resultLabel.text = "\(result)"
            }
            
        }
    }
    @IBAction func multplyClicked(_ sender: UIButton) {
        if let firstNamber = Int(firstText.text!) {
            if let secendNumber = Int(secendText.text!) {
                result = firstNamber * secendNumber
                resultLabel.text = "\(result)"
            }
            
        }
    }
    @IBAction func divideClicked(_ sender: UIButton) {
        if let firstNamber = Int(firstText.text!) {
            if let secendNumber = Int(secendText.text!) {
                result = firstNamber / secendNumber
                resultLabel.text = "\(result)"
            }
            
        }
    }
    
}

