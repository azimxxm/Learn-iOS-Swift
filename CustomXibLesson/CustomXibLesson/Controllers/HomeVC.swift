//
//  HomeVC.swift
//  CustomXibLesson
//
//  Created by Azimjon on 23/09/22.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func buttomPressed(_ sender: UIButton) {
        let aboutVC = AboutVC(nibName: "AboutVC", bundle: nil)
        aboutVC.modalTransitionStyle = .coverVertical
        self.present(aboutVC, animated: true)
    }
    
}
