//
//  Screen2.swift
//  MMEHolding
//
//  Created by Azimjon on 30/09/22.
//

import UIKit

class Screen2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func nextBtnPressed(_ sender: UIButton) {
        
        let screen3 = Screen3(nibName: "Screen3", bundle: nil)
        screen3.modalPresentationStyle = .fullScreen
        screen3.modalTransitionStyle = .partialCurl
        self.present(screen3, animated: true)
    }

    override func viewDidDisappear(_ animated: Bool) {
        print("hey")
    }
    
}
