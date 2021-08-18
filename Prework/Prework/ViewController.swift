//
//  ViewController.swift
//  Prework
//
//  Created by Alex Bairez on 8/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        tipControl.layer.borderColor = UIColor.black.cgColor
        print("View didLoad")
        // Do any additional setup after loading the view.
    }
    
    

//    @IBAction func darkMode(_ sender: UISwitch) {
//        onSwitch = !onSwitch
//        if onSwitch {
//            view.backgroundColor = .black
//            billAmountLabel.textColor = UIColor.white
//            tipLabel.textColor = UIColor.white
//            totalL.textColor = UIColor.white
//            darkModeLabel.textColor = UIColor.white
//            totalLabel.textColor = UIColor.white
//            tipAmountLabel.textColor = UIColor.white
//            tipControl.backgroundColor = UIColor.white
//            tipControl.layer.borderColor = UIColor.white.cgColor
//            tipControl.selectedSegmentTintColor = UIColor.white
//        }
//        else {
//            view.backgroundColor = .white
//            billAmountLabel.textColor = UIColor.black
//            tipLabel.textColor = UIColor.black
//            totalL.textColor = UIColor.black
//            darkModeLabel.textColor = UIColor.black
//            totalLabel.textColor = UIColor.black
//            tipAmountLabel.textColor = UIColor.black
//            tipControl.backgroundColor = UIColor.white
//            tipControl.layer.borderColor = UIColor.black.cgColor
//            tipControl.selectedSegmentTintColor = UIColor.white
//        }
//
//    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // good place to retrieve the default tip percentage from userDefaults
        // and use it to update the tip amount
                
        // setting defaults
//        defaults.setValue(w, forKey: tipOne)
//        defaults.set(tipControl, forKey: "tipTwo")
//        defaults.set(tipControl, forKey: "tipThree")

        // forcing defaults to save
        defaults.synchronize()
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field inout
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
}

