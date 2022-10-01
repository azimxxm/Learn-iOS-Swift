//
//  UserDetailVC.swift
//  CustomTableView
//
//  Created by Azimjon on 30/09/22.
//

import UIKit

class UserDetailVC: UIViewController {

    
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    var userName2 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName.text = userName2

        // Do any additional setup after loading the view.
    }




}
