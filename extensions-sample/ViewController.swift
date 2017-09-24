//
//  ViewController.swift
//  extensions-sample
//
//  Created by João Carlos Brandão on 24/09/17.
//  Copyright © 2017 BWmobi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeCollorBtn: UIButton!
    @IBOutlet weak var shakeBtn: UIButton!
    @IBOutlet weak var fadeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /// Action to perform an tapped on the button, and call the extension to colorize the button.
    ///
    /// - Parameter sender: button tapped reference
    @IBAction func changeCollorBtnTapped(_ sender: Any) {
        changeCollorBtn.changeColor()
    }
    
    /// Action to perform an tapped on the button, and call the extension to shake the button.
    ///
    /// - Parameter sender: button tapped reference
    @IBAction func shakeBtnTapped(_ sender: Any) {
        shakeBtn.shake()
    }
    
    /// Action to perform an tapped on the button, and call the extension to fade the button.
    ///
    /// - Parameter sender: button tapped reference
    @IBAction func fadeBtnTapped(_ sender: Any) {
        fadeBtn.fade()
    }
    
}

