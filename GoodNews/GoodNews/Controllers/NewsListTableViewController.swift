//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Azimjon on 07/09/22.
//

import Foundation
import UIKit


class NewsListTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/everything?q=tesla&from=2022-08-07&sortBy=publishedAt&apiKey=3ad54d625ab047728168ac25c5cacb61")!
        
        Webservice().getArticles(url: url) {
            _ in 
        }
        
    }
}
