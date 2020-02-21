//
//  ViewController.swift
//  Light
//
//  Created by Ashima T on 20/02/20.
//  Copyright © 2020 Ashima T. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
        self.lightButton.layer.cornerRadius = 15
        self.lightButton.layer.shadowColor = UIColor.black.cgColor
        }
    var lighton = true
    
    func  updateUI(){
        //view.backgroundColor = lighton ? .white: .black
        if lighton {
            view.backgroundColor = .white
            lightButton.setTitle("OFF", for: .normal)
            lightButton.setTitleColor( .white, for: .normal)
            lightButton.backgroundColor = .black
        
        } else {
            view.backgroundColor = .black
            lightButton.setTitle("ON", for: .normal)
            lightButton.setTitleColor( .black, for: .normal)
            lightButton.backgroundColor = .white
        }
        
    }

    @IBOutlet weak var lightButton: UIButton!
    @IBAction func lightButton(_ sender: AnyObject) {
        lighton = !lighton
        /*if lighton {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }*/
        updateUI()
        //func setTitle(_ String: , for: UIControl.State)
    }
    
}

