//
//  ViewController.swift
//  Tip Calc
//
//  Created by michael singer on 1/5/17.
//  Copyright © 2017 Joey Singer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var smileyLabel: UILabel!
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

    @IBAction func calcTip(_ sender: AnyObject) {
        let tipPercents = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercents[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        if tipControl.selectedSegmentIndex == 0 {
            smileyLabel.text = ":("
        }
        else if tipControl.selectedSegmentIndex == 1 {
            smileyLabel.text = ":|"
        }
        else {
            smileyLabel.text = ":)"
        }
    }
}

