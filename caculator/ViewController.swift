//
//  ViewController.swift
//  caculator
//
//  Created by Mario on 2017/11/14.
//  Copyright © 2017年 BearWow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dispaly: UILabel!
    private var userIntyping:Bool = false
    @IBAction func getDigit(_ sender: UIButton) {
        let myDigit = sender.currentTitle!
        if userIntyping {
            let lastvalue = dispaly.text
            dispaly.text = lastvalue! + myDigit
        }
        else{
            dispaly.text = myDigit
            userIntyping = true
        }
        print("\(myDigit) has been touched")
    }
    
    private var displayValue:Double{
        get{
            return Double(dispaly!.text!)!
        }
        set{
            dispaly!.text = String(newValue)
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        let symbol = sender.currentTitle
        switch symbol {
        case "√"?:
            let operand = Double(dispaly!.text!)
            displayValue = sqrt(operand!)
        case "P"?:
            displayValue = Double.pi
        default:
            break
        }
        userIntyping = false
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

