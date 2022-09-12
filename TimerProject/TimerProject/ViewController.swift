//
//  ViewController.swift
//  TimerProject
//
//  Created by Azimjon on 12/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()
    var counter = 0
    
    let gifImage = UIImage.gifImageWithName("congratulations")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    
    @IBOutlet weak var imageView: UIImageView!
    

    @IBAction func buttonClicked(_ sender: UIButton) {
        counter = 10
        timeLabel.text = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunc(){
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time's Over!"
            imageView.image = gifImage
            
        }
    }
    
}


