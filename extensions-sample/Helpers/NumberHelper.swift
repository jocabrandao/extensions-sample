//
//  NumberHelper.swift
//  extensions-sample
//
//  Created by João Carlos Brandão on 24/09/17.
//  Copyright © 2017 BWmobi. All rights reserved.
//

import UIKit

/// Generate one or more random numbers.
///
/// - Parameter quantity: sets the number of numbers you want to generate.
/// - Returns: list of randomly generated numbers.
func generateRandomNumbers(quantity: Int) -> [CGFloat] {
    var randomNumberLst = [CGFloat]()
    for _ in 1...quantity {
        let randomNumber = CGFloat(arc4random_uniform(255))
        randomNumberLst.append(randomNumber)
    }
    return randomNumberLst
}

