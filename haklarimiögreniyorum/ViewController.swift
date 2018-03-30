//
//  ViewController.swift
//  haklarimiögreniyorum
//
//  Created by Elif Tultay on 29.03.2018.
//  Copyright © 2018 eliftultay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    
    
    var sideMenuHidden = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sideMenuConstraint.constant = -200
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func menuPressButton(_ sender: UIBarButtonItem) {
        
        if(sideMenuHidden){
            sideMenuConstraint.constant = 0
        } else {
            sideMenuConstraint.constant = -200
        }
        sideMenuHidden = !sideMenuHidden
        
    }
    
}

