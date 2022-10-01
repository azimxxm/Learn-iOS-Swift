//
//  HomeVC.swift
//  CustomTableView
//
//  Created by Azimjon on 30/09/22.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var tableView: UITableView!
    var myData = ["Azimjon", "Hurshid", "Jalil", "Giyos", "Rasul", "Sarvinoz"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "UsersTableViewCell", bundle: nil), forCellReuseIdentifier: "UsersTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = false
//        tableView.separatorStyle = .none

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UsersTableViewCell", for: indexPath) as! UsersTableViewCell
        let name = myData[indexPath.row]
        cell.userName.text = name
        cell.userImage.image = UIImage(named: name)
        cell.dateCreated.text = "22.04.2022"
        return cell
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
        let userDetailVC = UserDetailVC(nibName: "UserDetailVC", bundle: nil)
        userDetailVC.userName2 = myData[indexPath.row]
        self.present(userDetailVC, animated: true)
    }



}
