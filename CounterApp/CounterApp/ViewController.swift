//
//  ViewController.swift
//  CounterApp
//
//  Created by Azimjon on 10/09/22.
//

import UIKit
import AudioToolbox


class ViewController: UIViewController {
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var startingTextLabel: UILabel!
    @IBOutlet weak var storeCounterLabel: UILabel!
    
    @IBOutlet weak var currentCounterLabel: UILabel!
    var defaultNumberCounter:UInt8 = 0
    
    let tasbexList = ["Субҳааналлоҳ", "Алҳамдулиллааҳ", "Аллоҳу акбар"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storeCounter = UserDefaults.standard.object(forKey: "storeCounter")
        
        if let newCounter = storeCounter as? String {
            storeCounterLabel.text = newCounter
        }

    }

    
    @IBAction func plusButtonPressed(_ sender: UIButton) {
        counterChanger(keyButton:"+")
        UserDefaults.standard.set(counterLabel.text!, forKey: "storeCounter")
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        counterChanger(keyButton:"-")
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
    func counterChanger(keyButton:Character){
        if keyButton == "+" {
            defaultNumberCounter += 1
            counterLabel.text = "\(defaultNumberCounter)"
            if defaultNumberCounter == 1{
                startingTextLabel.text = tasbexList[0]
                currentCounterLabel.text = "1"
            }else if defaultNumberCounter == 33 {
                startingTextLabel.text = tasbexList[1]
                currentCounterLabel.text = "2"
            }else if defaultNumberCounter == 66 {
                startingTextLabel.text = tasbexList[2]
                currentCounterLabel.text = "3"
            }else if defaultNumberCounter == 98 {
                defaultNumberCounter = 0
                startingTextLabel.text = tasbexList[0]
                currentCounterLabel.text = "1"
            }
        } else {
            if defaultNumberCounter != 0 {
                defaultNumberCounter -= 1
                counterLabel.text = "\(defaultNumberCounter)"
            }
        }
    }
    
    
}
