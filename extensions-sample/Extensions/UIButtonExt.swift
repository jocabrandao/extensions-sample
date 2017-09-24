//
//  UIButtonExt.swift
//  extensions-sample
//
//  Created by João Carlos Brandão on 24/09/17.
//  Copyright © 2017 BWmobi. All rights reserved.
//
//  Extension from UIButton to set more functionality for the object.
//

import UIKit

extension UIButton {
    
     // Function to do a button auto shake.
    func shake() {
        let shakeAnim = CABasicAnimation(keyPath: "position")
        shakeAnim.duration = 0.05
        shakeAnim.repeatCount = 5
        shakeAnim.autoreverses = true
        shakeAnim.fromValue = CGPoint(x: (self.center.x - 4.0), y: (self.center.y))
        shakeAnim.toValue = CGPoint(x: (self.center.x + 4.0), y: (self.center.y))
        layer.add(shakeAnim, forKey: "position")
    }
    
    // Function to do a button fade effect.
    func fade() {
        UIView.animate(withDuration: 0.15, animations: {
            self.alpha = 0.75
        }) { (finished) in
            UIView.animate(withDuration: 0.15, animations: {
                self.alpha = 1.0
            })
        }
    }
    
     // Function to do a button change your own color.
    func changeColor() {
        let randomNumberList = generateRandomNumbers(quantity: 3)
        let randomColor = UIColor(red: (randomNumberList[0]/255), green: (randomNumberList[1]/255), blue: (randomNumberList[2]/255), alpha: 1.0)
        UIView.animate(withDuration: 0.3) {
            self.backgroundColor = randomColor
        }
    }
    
}
