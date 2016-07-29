//
//  ViewController.swift
//  Calculator
//
//  Created by UntilYou-QC on 16/5/29.
//  Copyright © 2016年 UntilYou-QC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var display: UILabel!

    var userIsClickingDigit: Bool = false
    
    @IBAction func clickDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsClickingDigit {
            display.text = display.text! + digit  // + 字符串拼接
        } else {
            display.text = digit
            if display.text != "0" {
                userIsClickingDigit = true
            }
        }
    }

    var operantStack = Array<Double>() 
    
    @IBAction func enter() {
        userIsClickingDigit = false
        operantStack.append(displayValue)
        print("operantStack = \(operantStack)")
    }
    
    var displayValue: Double {
        get {
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set {
            display.text =  "\(newValue)"
            userIsClickingDigit = false
        }
    }
    
}

