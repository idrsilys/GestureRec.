//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Edris ILYAS on 1.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var İMAGEVİEW: UIImageView!
      
    @IBOutlet weak var myLabel: UILabel!
    
    var isceza = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        İMAGEVİEW.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        
        İMAGEVİEW.addGestureRecognizer(gestureRecognizer)
        
    }

    @objc func changePic () {
        
        if isceza == true {
        
        İMAGEVİEW.image = UIImage ( named: "sago")
        myLabel.text = " SAGO "
            isceza = false
        }
        else {
            İMAGEVİEW.image = UIImage(named: "ceza")
            myLabel.text = "CEZA"
            isceza = true
        }
        
    }
    

}


