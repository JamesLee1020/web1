//
//  ViewController.swift
//  testPos
//
//  Created by JamesLee on 2019/02/19.
//  Copyright © 2019 JamesLee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen = 0
    var previousNumber = 0
    var performingMath = false
    var operation = 0;
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if label.text != "" && label.text != "+" && sender.tag == 11{
            label.text =
                label.text! + String("00")
        }else if sender.tag != 10 && sender.tag != 11{
            if performingMath == true{
                label.text = String(sender.tag-1)
                numberOnScreen = Int(label.text!)!
                performingMath = false
            }else{
                label.text = label.text! + String(sender.tag-1)
                numberOnScreen = Int(label.text!)!
            }
        }
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if label.text != "" && sender.tag != 14
        {
            previousNumber = Int(label.text!)!
            if sender.tag == 12{
                
            }else if sender.tag == 13{
                label.text = "+"
            }
            operation = sender.tag
            performingMath = true
        }
        if sender.tag == 14{
            
                label.text = String(previousNumber + numberOnScreen)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

