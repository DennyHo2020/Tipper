//
//  ViewController.swift
//  Tipper
//
//  Created by Denny Ho on 9/4/18.
//  Copyright © 2018 Denny Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func tipCalculator(_ sender: Any) {
        let tipPercentages = [0.15,0.18,0.2]
        let bill = Double(billField.text!) ?? 0
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total = tip + bill
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)

    }
    
}

