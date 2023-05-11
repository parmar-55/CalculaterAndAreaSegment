//
//  AnimationViewController.swift
//  SCS_APP_2.0
//
//  Created by apple on 01/02/23.
//

import UIKit

class AnimationViewController: UIViewController {

 @IBOutlet weak var image: UIImageView!
 @IBOutlet weak var seg: UISegmentedControl!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            for i in 1...3
            {
                let img : String = "\(i).jpeg"
                let img1 = UIImage(named: img)
                ImgArr.add(img1)
            }
            
            self.image.animationImages = ImgArr as? [UIImage]
            self.image.animationDuration = 5.0
            self.image.startAnimating()
            
        }
        
        var ImgArr : NSMutableArray = []
        
        @IBAction func btn(sender:Any)
        {
            
            if seg.selectedSegmentIndex == 0
            {
                let img = UIImage(named: "1.jpeg")
                image!.image = img
            }
            if seg.selectedSegmentIndex == 1
            {
                let img = UIImage(named: "2.jpeg")
                image!.image = img
            }
            if seg.selectedSegmentIndex == 2
            {
                let img = UIImage(named: "3.jpeg")
                image!.image = img
            }
            
            
        }

    }
 
