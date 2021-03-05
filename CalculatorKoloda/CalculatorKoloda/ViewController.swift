//
//  ViewController.swift
//  CalculatorKoloda
//
//  Created by nikita koloda on 02.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var numberFromScrean:Double = 0
    var firstNum:Double = 0
    var mathSign:Bool = false
    var operation:Int = 0
    
    
    
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15{
            firstNum = Double(result.text!)!
            if sender.tag == 11{
                result.text = "÷"
            }
            else if sender.tag == 12{
                result.text = "×"
            }
            else if sender.tag == 13{
                result.text = "−"
            }
            else if sender.tag == 14{
                result.text = "+"
            }
            operation = sender.tag
            mathSign = true
        } else if sender.tag == 15{
          if  operation == 11{
                result.text = String(firstNum / numberFromScrean)
            } else if operation == 12 {
                result.text = String(firstNum * numberFromScrean)
            } else if operation == 13{
                result.text = String(firstNum - numberFromScrean)
            } else if operation == 14 {
                result.text = String(firstNum + numberFromScrean)
            }
         
        } else if sender.tag == 10{
            result.text = String("")
            firstNum = 0
            numberFromScrean = 0
            operation = 0
        }
    }
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func didgits(_ sender: UIButton) {
        if mathSign == true{
            result.text = String(sender.tag)
            mathSign = false
        } else {
            result.text = result.text! + String(sender.tag)
        }
        
        numberFromScrean = Double(result.text!)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    }



