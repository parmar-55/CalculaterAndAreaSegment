//
//  secondViewController.swift
//  calculatorAndAreaSegment
//
//  Created by apple on 19/01/23.
//

import UIKit

class secondViewController: UIViewController {
    @IBOutlet weak var secondname: UITextField!
    @IBOutlet weak var fristname: UITextField!
    @IBOutlet weak var triangal: UILabel!
    @IBOutlet weak var rectangale: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var circle: UILabel!
    var a1:Double = 0
    var b1:Double = 0
    var c1:Double = 0
    @IBAction func sibtn(sender:Any)
    {
        var a:Double = Double(fristname.text!) ?? 0
        var b:Double = Double(secondname.text!) ?? 0
        var t = segment.titleForSegment(at: segment.selectedSegmentIndex)
        if(t == "circle"){
            a1 = 3.14 * a * a
            circle.text = "\(a1)"
        }
       if(t == "triangle"){
             b1 = 0.5 * (a*b)
            triangal.text = "\(b1)"
        }
        else if (t == "Rectangle"){
            c1 = (a*b)
            rectangale.text = "\(c1)"
        }
        var b3 = a1 + b1 + c1
        total.text = "\(b3)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
