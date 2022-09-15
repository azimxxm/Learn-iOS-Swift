//
//  ViewController.swift
//  TableView
//
//  Created by Azimjon on 12/09/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        landmarkNames.append("London")
        landmarkNames.append("Newyork")
        landmarkNames.append("Parish")
        landmarkNames.append("Tajmahal")
        landmarkNames.append("Uzbekistan")
        
        
        landmarkImages.append(UIImage(named: "london")!)
        landmarkImages.append(UIImage(named: "newyork")!)
        landmarkImages.append(UIImage(named: "parish")!)
        landmarkImages.append(UIImage(named: "tajmahal")!)
        landmarkImages.append(UIImage(named: "uzbekistan")!)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
//        content.secondaryText = "Test"
//        content.image = landmarkImages[indexPath.row]
        cell.contentConfiguration = content
        
        return cell
    }


}

