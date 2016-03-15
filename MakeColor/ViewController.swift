//
//  ViewController.swift
//  MakeColor
//
//  Created by Matthew Catellier on 2016-03-15.
//  Copyright © 2016 Matthew Catellier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let mk = MakeColor();
        self.view.backgroundColor = mk.makeColor("FF0000");
        
        let gradient = mk.makeGradient("FF0000", color2: "0000FF")
        gradient.frame = view.bounds;
        self.view.layer.insertSublayer(gradient, atIndex: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

