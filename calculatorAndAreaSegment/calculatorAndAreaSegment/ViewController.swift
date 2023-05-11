//
//  ViewController.swift
//  calculatorAndAreaSegment
//
//  Created by apple on 19/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var seg:UISegmentedControl!
    @IBOutlet var lbl:UILabel!
    @IBOutlet var txt1:UITextField!
    @IBOutlet var txt2:UITextField!
    @IBAction func sibtn(sender:Any)
    {
        var a:Int = Int(txt1.text!) ?? 0
        var b:Int = Int(txt2.text!) ?? 0
        var t = seg.titleForSegment(at: seg.selectedSegmentIndex)
        if(t == "+"){
            lbl.text = "Result is \(a+b)"
        }
       else if(t == "/"){
            lbl.text = "Result is \(a/b)"
        }
       else if(t == "%"){
            lbl.text = "Result is \(a%b)"
        }
        else if(t == "-"){
            lbl.text = "Result is \(a-b)"
        }
        else
        {
            lbl.text = "Result is \(a * b)"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

