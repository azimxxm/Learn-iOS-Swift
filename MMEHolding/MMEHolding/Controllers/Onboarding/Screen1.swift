//
//  Screen1.swift
//  MMEHolding
//
//  Created by Azimjon on 30/09/22.
//

import UIKit

class Screen1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func nextBtnPressed(_ sender: UIButton) {
        let screen2 = Screen2(nibName: "Screen2", bundle: nil)
        screen2.modalPresentationStyle = .fullScreen
        screen2.modalTransitionStyle = .partialCurl
        self.present(screen2, animated: true)

    }

    override func viewDidDisappear(_ animated: Bool) {
        print("hey")
    }
    

}
