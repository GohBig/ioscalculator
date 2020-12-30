//
//  ViewController.swift
//  Prework
//
//  Created by Brandon Goh on 2020-12-29.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billText: UITextField!
    
    @IBOutlet weak var totalVal: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billText.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalVal.text = String(format: "$%.2f", total)
    }
}

