//
//  UserTVC.swift
//  Task1
//
//  Created by Azimjon Abdurasulov on 29/10/22.
//

import UIKit

class UserTVC: UITableViewCell {

    static let identifier: String = "UserTVC"
    
    static func nib() -> UINib {
        return UINib(nibName: "UserTVC", bundle: nil)
    }
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var passwordLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func updateCell(users:Users) {
        emailLbl.text = users.email
        passwordLbl.text = users.password
    }
    

    
}
