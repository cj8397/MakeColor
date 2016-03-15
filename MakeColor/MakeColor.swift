//
//  MakeColor.swift
//  MakeColor
//
//  Created by Matthew Catellier on 2016-03-15.
//  Copyright © 2016 Matthew Catellier. All rights reserved.
//

import UIKit

public class MakeColor {
    
    init() {
        
    }
    
    public func makeColor (hex:String) -> UIColor {
        var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
        
        if (cString.hasPrefix("#")) {
            cString = (cString as NSString).substringFromIndex(1)
        }
        
        // default color
        //        if (countElements(cString) != 6) {
        //        return UIColor.grayColor()
        //        }
        
        let rString = (cString as NSString).substringToIndex(2)
        let gString = ((cString as NSString).substringFromIndex(2) as NSString).substringToIndex(2)
        let bString = ((cString as NSString).substringFromIndex(4) as NSString).substringToIndex(2)
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        NSScanner(string: rString).scanHexInt(&r)
        NSScanner(string: gString).scanHexInt(&g)
        NSScanner(string: bString).scanHexInt(&b)
        
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
    }
    
    /* http://www.developerdave.co.uk/2014/10/gradient-backgrounds-swift/ */
    public func makeVerticalGradient(color1:String, color2:String) -> CAGradientLayer {
        let topColor = makeColor(color1);
        let bottomColor = makeColor(color2);
        
        let gradientColors: Array <AnyObject> = [topColor.CGColor, bottomColor.CGColor]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.startPoint = CGPointMake(0.5, 0);
        gradientLayer.endPoint = CGPointMake(0.5, 1);
        
        return gradientLayer
    }
    
    /* http://www.developerdave.co.uk/2014/10/gradient-backgrounds-swift/ */
    public func makeHorizontalGradient(color1:String, color2:String) -> CAGradientLayer {
        let topColor = makeColor(color1);
        let bottomColor = makeColor(color2);
        
        let gradientColors: Array <AnyObject> = [topColor.CGColor, bottomColor.CGColor]
        // let gradientLocations: Array <NSNumber> = [location1, location2]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.startPoint = CGPointMake(0, 0.5);
        gradientLayer.endPoint = CGPointMake(1, 0.5);
        // gradientLayer.locations = gradientLocations
        
        return gradientLayer
    }
    
    public func makeGradient(color1:String, color2:String, startPoint:CGPoint, endPoint:CGPoint) -> CAGradientLayer {
        let topColor = makeColor(color1);
        let bottomColor = makeColor(color2);
        
        let gradientColors: Array <CGColorRef> = [topColor.CGColor, bottomColor.CGColor]
        // let gradientLocations: Array <NSNumber> = [location1, location2]
        
        
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors;
        gradientLayer.startPoint = startPoint;
        gradientLayer.endPoint = endPoint;  // CGPointMake(1, 0.5);
        // gradientLayer.locations = gradientLocations
        
        return gradientLayer
    }
    
    public func makeGradientOpac(gradient:CAGradientLayer,alpha:CGFloat) ->CAGradientLayer {
        gradient.allowsGroupOpacity = true; //.colorWithAlphaComponent(alpha);
        let gColors = gradient.colors! as! Array <CGColorRef>;
        
        for(var i = 0; i < gColors.count; i++ ) {
            print(gColors[i]);
//            for(var j = 0; j < colors[i].colors!!.count; j++) {
//                colors[i].colors
//            }
        }
        return gradient;
    }
    
    public func makeOpac(var color:UIColor,alpha:CGFloat) ->UIColor {
        color = color.colorWithAlphaComponent(alpha);
        return color;
    }
    
    //
    public func makeDarker(color :UIColor, percent:CGFloat) ->UIColor {
        let float = percent/100;
        let ciColor = color.coreImageColor!
        var red = ciColor.red
        if(red != 0 ) {
            red = ciColor.red - float;
        }
        var green = ciColor.green
        if(green != 0 ) {
            green = ciColor.green - float;
        }
        var blue = ciColor.blue
        if(blue != 0 ) {
            blue = ciColor.blue - float;
        }
        let alpha = ciColor.alpha
        
        let darkerColor = UIColor(red: red, green: green, blue:blue , alpha: alpha)
        return darkerColor;
        
    }
    
    public func makeLighter(color :UIColor, percent:CGFloat)-> UIColor {
        let float = percent/100;
        let ciColor = color.coreImageColor!
        var red = ciColor.red
        if(red != 1.0 ) {
            red = ciColor.red + float;
        }
        var green = ciColor.green
        if(green != 1.0 ) {
            green = ciColor.green + float;
        }
        var blue = ciColor.blue
        if(blue != 1.0 ) {
            blue = ciColor.blue + float;
        }
        let alpha = ciColor.alpha
        
        let darkerColor = UIColor(red: red , green: green, blue:blue , alpha: alpha)
        return darkerColor;
    }
}

// to get components RGB components out of a UIColor
extension UIColor {
    var coreImageColor: CoreImage.CIColor? {
        return CoreImage.CIColor(color: self)  // The resulting Core Image color, or nil
    }
}
