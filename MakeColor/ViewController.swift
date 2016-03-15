//
//  ViewController.swift
//  MakeColor
//
//  Created by Matthew Catellier on 2016-03-15.
//  Copyright © 2016 Matthew Catellier. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let mk = MakeColor()
    @IBOutlet weak var colorSquare: UIView!
    @IBOutlet weak var colorOne: UITextField!
    @IBOutlet weak var colorTwo: UITextField!
    @IBOutlet weak var blueColor: UIView!
    
    @IBAction func mkColorBtn(sender: AnyObject)
    {
        //colorSquare.backgroundColor = mk.makeColor("0000ff");
        let colorone = colorOne.text;
        let colortwo = colorTwo.text;
        let gradient = mk.makeVerticalGradient(colorone!, bottomColor: colortwo!)
        gradient.frame = view.bounds;
        self.view.layer.insertSublayer(gradient, atIndex: 0)
        self.blueColor.hidden = true;
    }
    
    @IBAction func clearBtn(sender: AnyObject)
    {
        self.view.layer.removeFromSuperlayer();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //let mk = MakeColor();
        // SOLID COLOR
        var color = mk.makeColor("FF5E3A")// mk.makeOpac(, alpha: 0.8);
        
        color = mk.makeLighter(color, percent: 30)
        // color = mk.makeDarker(color, percent: 20)
        self.view.backgroundColor = color;

        
         // VERTICAL GRADIENT
         let gradient = mk.makeVerticalGradient("FF9500", bottomColor: "FF5E3A")
         gradient.frame = view.bounds;
         self.view.layer.insertSublayer(gradient, atIndex: 0)
        
        // HOIZONTAL GRADIENT
        //let startPoint = CGPoint(x: 0, y: 0.8);
        //let endPoint = CGPoint(x: 1, y: 0.2)
        //let gradient2 = mk.makeGradient("FF00000", color2: "0000FF", startPoint: startPoint, endPoint: endPoint)
        //gradient2.frame = view.bounds;
        //self.view.layer.insertSublayer(gradient2, atIndex: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



