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
    }
    var lighton = true
    
    func  updateUI(){
        //view.backgroundColor = lighton ? .white: .black
        if lighton {
            view.backgroundColor = .white
            
        } else {
            view.backgroundColor = .black
            
        }    }

    @IBAction func lightButton(_ sender: UIButton) {
        lighton = !lighton
        /*if lighton {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }*/
        updateUI()
    }
    
}

