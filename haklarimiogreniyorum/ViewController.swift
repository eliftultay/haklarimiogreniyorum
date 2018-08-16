//
//  ViewController.swift
//  haklarimiögreniyorum
//
//  Created by Elif Tultay on 29.03.2018.
//  Copyright © 2018 eliftultay. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var testButton: UIButton!
    @IBOutlet weak var agreementButton: UIButton!
    @IBOutlet weak var sb1: UIButton!
    @IBOutlet weak var sb2: UIButton!
    @IBOutlet weak var sb3: UIButton!
    @IBOutlet weak var sb4: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var photo: UIImageView!
    
    var sideMenuHidden = true
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sideMenuConstraint.constant = -200
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "music", ofType: "m4a")!))
            audioPlayer.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        self.design(testButton)
        self.design(agreementButton)
        self.design(sb1)
        self.design(sb2)
        self.design(sb3)
        self.design(sb4)
        self.design(label)
        
    }

    func design(_ object:AnyObject){
        
        object.layer.cornerRadius = 6
        object.layer.masksToBounds = true
        object.layer.borderWidth = 1
        object.layer.borderColor = UIColor.cyan.cgColor
        
    }

    @IBAction func menuPressButton(_ sender: UIBarButtonItem) {
        
        if(sideMenuHidden){
            sideMenuConstraint.constant = 0
        } else {
            sideMenuConstraint.constant = -200
        }
        sideMenuHidden = !sideMenuHidden
        
    }
    
    @IBAction func Pause(_ sender: Any) {
    
        if audioPlayer.isPlaying{

            audioPlayer.pause()
        }
        else{
            
        }
    }
    
    @IBAction func Play(_ sender: Any) {
        
        audioPlayer.play()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

