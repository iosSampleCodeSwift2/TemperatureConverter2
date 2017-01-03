//
//  ViewController.swift
//  TemperatureConverter2
//
//  Created by Daesub Kim on 2016. 10. 11..
//  Copyright © 2016년 DaesubKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // Properties
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var label1: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tf1.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // UITextFieldDelegate
    func textFieldDidEndEditing(textField: UITextField) {
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    

    @IBAction func ceToFa(sender: AnyObject) {
        
        if let _ = sender as? UIButton {
            let ce = tf1.text!.toDouble()
            let fa = CelsiusToFahrenheit(temperature: ce)
            label1.text = String.localizedStringWithFormat("%.2f", fa.fa)
        }
        
    }
    @IBAction func faToCe(sender: AnyObject) {
        
        if let _ = sender as? UIButton {
            let fe = tf1.text!.toDouble()
            let ce = FahrenheitToCelsius(temperature: fe)
            label1.text = String.localizedStringWithFormat("%.2f", ce.ce)
        }
    }

}

// extesion 은 존재하는 클래스를 확장하는 기능
extension String {
    func toFloat() -> Float {
        if let unwrappedNum = Float(self) {
            return unwrappedNum
        } else {
            print("Error converting \"" + self + "\" to Float"  )
            return 0.0
        }
    }
    func toDouble() -> Double {
        if let unwrappedNum = Double(self) {
            return unwrappedNum
        } else {
            print("Error converting \"" + self + "\" to Double"  )
            return 0.0
        }
    }
}
