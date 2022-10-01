//
//  Screen3.swift
//  MMEHolding
//
//  Created by Azimjon on 30/09/22.
//

import UIKit

class Screen3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func nextBtnPressed(_ sender: UIButton) {
        let screen4 = Screen4(nibName: "Screen4", bundle: nil)
        screen4.modalPresentationStyle = .fullScreen
        screen4.modalTransitionStyle = .partialCurl
        self.present(screen4, animated: true)
    }

}
