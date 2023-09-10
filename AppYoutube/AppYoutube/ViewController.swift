//
//  ViewController.swift
//  AppYoutube
//
//  Created by Paulo Pinheiro on 9/8/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.dataSource = self
        
        model.getVideos()
    }

    
}

