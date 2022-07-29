//
//  ViewController.swift
//  Pre-work
//
//  Created by Rajan Patel on 7/28/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundTap = UITapGestureRecognizer()
        self.view.addGestureRecognizer(backgroundTap)
        backgroundTap.addTarget(self, action: #selector(tapping))
        // Do any additional setup after loading the view.
    }
    
    @objc func tapping(){
        BackgroundColor.backgroundColor = UIColor.systemBrown
        Texty.textColor = UIColor.systemRed
        Texty.text = "Hello World!"
        
    }
    @IBOutlet weak var Texty: UILabel!
    
    
    @IBAction func StringColor(_ sender: Any) {
        Texty.textColor = UIColor.blue
    }
    
    @IBOutlet var BackgroundColor: UIView!
    @IBAction func ChangeBackground(_ sender: Any) {
        BackgroundColor.backgroundColor = UIColor.systemBlue
    }
    
    
    
    @IBOutlet weak var TextyField: UITextField!
    
    
    
    @IBAction func ChangeText(_ sender: UIButton) {
        Texty.text = TextyField.text
        TextyField.resignFirstResponder()
        if TextyField.text == ""{
            Texty.text = "Goodbye! 👋"
         }
    }
    
}

