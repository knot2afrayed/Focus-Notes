//
//  ViewController.swift
//  Focus Notes
//
//  Created by Shawn Haynes on 1/31/17.
//  Copyright © 2017 Shawn Haynes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberA: UITextField!
    @IBOutlet var numberB: UITextField!
    
    @IBOutlet var AnswerText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func gcd(_ a: Int, _ b: Int) -> Int {
        let r = a % b
        if r != 0 {
            return gcd(b, r)
        } else {
            return b
        }
    }
    @IBAction func calcGCF(_ sender: Any) {
        if let tryA = Int(numberA.text!), let tryB = Int(numberB.text!){
       
        let answer = gcd(tryA, tryB)
            AnswerText.text = "\(answer)"
        }
    }
    
}

