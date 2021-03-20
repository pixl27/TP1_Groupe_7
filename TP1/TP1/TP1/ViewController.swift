//
//  ViewController.swift
//  TP1
//
//  Created by mbds on 19/03/2021.
//

import UIKit

class ViewController: UIViewController {

    var nbr: String = ""
    var operateur: String = ""
    @IBOutlet weak var nombre1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var resultat: UILabel!
    @IBAction func eightTap(_ sender: Any) {
        nbr = nbr + "8"
        nombre1.text = nbr
        
    }
    @IBAction func sevenTap(_ sender: Any) {
        nbr = nbr + "7"
        nombre1.text = nbr
        
    }
    
    @IBAction func nineTap(_ sender: Any) {
        nbr = nbr + "9"
        nombre1.text = nbr
        
    }
    
    @IBAction func fourTap(_ sender: Any) {
        nbr = nbr + "4"
        nombre1.text = nbr
        
    }
    
    @IBAction func fiveTap(_ sender: Any) {
        nbr = nbr + "5"
        nombre1.text = nbr
    }
    
    @IBAction func sixTap(_ sender: Any) {
        nbr = nbr + "6"
        nombre1.text = nbr
    }
    
    @IBAction func oneTap(_ sender: Any) {
        nbr = nbr + "1"
        nombre1.text = nbr
    }
    
    @IBAction func twoTap(_ sender: Any) {
        nbr = nbr + "2"
        nombre1.text = nbr
    }
        
    @IBAction func threeTap(_ sender: Any) {
        nbr = nbr + "3"
        nombre1.text = nbr
    }
    
    @IBAction func zeroTap(_ sender: Any) {
        nbr = nbr + "0"
        nombre1.text = nbr
        
    }
    @IBAction func plusTap(_ sender: Any) {
        nbr = nbr + "+"
        nombre1.text = nbr

    }
    
    @IBAction func minusTap(_ sender: Any) {
        nbr = nbr + "-"
        nombre1.text = nbr

        
    }
    @IBAction func divideTap(_ sender: Any) {
        nbr = nbr + "/"
        nombre1.text = nbr
   
        
    }
    @IBAction func multiplyTap(_ sender: Any) {
        nbr = nbr + "*"
        nombre1.text = nbr

        
    }
    func calculator(aCalculer:String)->Double{
        let nbrString: String = aCalculer // Example
        let exp: NSExpression = NSExpression(format:nbrString)
        let result: Double = exp.expressionValue(with:nil, context: nil) as! Double
        return result
    }

    
    @IBAction func clearTap(_ sender: Any) {
        nbr = ""
        nombre1.text = ""
        resultat.text = ""
        
    }
    
    @IBAction func equalTap(_ sender: Any) {
        let test: Double = calculator(aCalculer:nbr)
        let testString = String(test)
        nbr = ""
        nombre1.text = ""
        resultat.text = testString

    }
    
}

