//
//  ViewController.swift
//  Course2Week4Task3
//
//  Created by Konstantins Belcickis on 15/02/2020.
//  Copyright © 2020 Konstantins Belcickis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var launchTime: UILabel!
    @IBOutlet weak var appearanceTime: UILabel!
    @IBOutlet weak var update: UIBarButtonItem!
    
   override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        launchTime.text = getCurrentDate()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        appearanceTime.text = getCurrentDate()
    }
    
    @IBAction func update(_ sender: Any) {
         appearanceTime.text = getCurrentDate()
    }
    
    func getCurrentDate() -> String {
        let currentTime = Date()
        let dateFormater = DateFormatter()
        dateFormater.dateStyle = .medium
        dateFormater.timeStyle = .medium
        return dateFormater.string(from: currentTime)
    }
}

class secondView: UIViewController {
    
    override var prefersStatusBarHidden: Bool {
          return true
      }
}
