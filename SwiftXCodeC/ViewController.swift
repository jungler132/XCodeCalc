//
//  ViewController.swift
//  SwiftXCodeC
//
//  Created by student on 17.11.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var button_1: UIButton!
    @IBOutlet weak var button_2: UIButton!
    @IBOutlet weak var button_3: UIButton!
    @IBOutlet weak var button_4: UIButton!
    @IBOutlet weak var button_5: UIButton!
    @IBOutlet weak var button_6: UIButton!
    @IBOutlet weak var button_7: UIButton!
    @IBOutlet weak var button_8: UIButton!
    @IBOutlet weak var button_9: UIButton!
    @IBOutlet weak var button_zero: UIButton!
    @IBOutlet weak var button_plus: UIButton!
    @IBOutlet weak var button_multiply: UIButton!
    @IBOutlet weak var button_divide: UIButton!
    @IBOutlet weak var button_minus: UIButton!
    @IBOutlet weak var button_cancel: UIButton!
    @IBOutlet weak var button_answer: UIButton!
    @IBOutlet weak var button_dot: UIButton!
    @IBOutlet weak var display: UILabel!
    
    var display_number : Double = 0
    var first_number : Double = 0
    var oper : Bool = false
    var to_work : Int = 0

    
    @IBAction func buttons(_ sender: UIButton) {
        
        if oper == true {
            display.text = String(sender.tag)
            oper = false
        }
        else {
            display.text = display.text! + String(sender.tag)
            
        }
        
        display_number = Double(display.text!)!
        
    }
    
    @IBAction func actions(_ sender: UIButton) {
        if display.text != "" && sender.tag != 10 && sender.tag != 20 {
            first_number = Double(display.text!)!
            if sender.tag == 12 {
                //plus
                display.text = "+"
            }
            else if sender.tag == 13 {
                //multiply
                display.text = "*"
            }
            else if sender.tag == 14 {
                //divide
                display.text = "/"
            }
            else if sender.tag == 15 {
                //minus
                display.text = "-"
            }
            to_work = sender.tag
            oper = true
        }
        else if sender.tag == 10 {
            //count
            if to_work == 12 {
                display.text = String(first_number + display_number)
            }
            else if to_work == 13 {
                display.text = String(first_number * display_number)
            }
            else if to_work == 14 {
                if first_number == 0 || display_number == 0 {
                    display.text = "ERROR"
                }
                else{
                    display.text = String(first_number / display_number)
                }
            }
            else if to_work == 15 {
                display.text = String(first_number - display_number)
            }
        }
        else if sender.tag == 20 {
            display.text = ""
            first_number = 0
            to_work = 0
            display_number = 0
        }
    }
    
   
  
    
    
    
    
    
    
    
}


