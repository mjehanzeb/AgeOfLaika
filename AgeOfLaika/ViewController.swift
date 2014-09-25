//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by KT on 2014-09-17.
//  Copyright (c) 2014 KT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYears: UITextField!
    @IBOutlet weak var convertedDogYears: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var numberOfBottles = 100
        
        for numberOfBottles; numberOfBottles > 0; numberOfBottles-- {
            println("\(numberOfBottles) Bottles of Soda on the Wall" )
        }
        println("No More Soda on the Wall")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressedToConvertYears(sender: UIButton) {
        let conversionConstant = 7
        let humanVal = humanYears.text.toInt()!
        convertedDogYears.text = "\(humanVal * conversionConstant)"
        convertedDogYears.hidden = false
        humanYears.resignFirstResponder()
    }

    @IBAction func realConversionButtonPressed(sender: UIButton) {
        let humanYearsVal = humanYears.text.toInt()!
        var calculatedVal:Double
        
        if humanYearsVal <= 2 {
            calculatedVal = Double(humanYearsVal) * 10.5
        } else {
            let difference = humanYearsVal - 2
            calculatedVal = 2 * 10.5 + Double(difference * 4)
        }
        
        convertedDogYears.text = "\(calculatedVal)"
        convertedDogYears.hidden = false
        humanYears.resignFirstResponder()
    }
}

