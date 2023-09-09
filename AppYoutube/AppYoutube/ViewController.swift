//
//  ViewController.swift
//  AppYoutube
//
//  Created by Paulo Pinheiro on 9/8/23.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }

    
}

