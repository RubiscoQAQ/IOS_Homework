//
//  ViewController.swift
//  MyLight
//
//  Created by 孙钰昇 on 2020/9/21.
//  Copyright © 2020 孙钰昇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet var myLabel: UIView!
   
    
    @IBOutlet weak var pic: UIImageView!
    @IBOutlet weak var MyButton: UIButton!
    @IBAction func openLight(_ sender: Any) {
        if myLabel.backgroundColor==UIColor.black{
            myLabel.backgroundColor = UIColor.white
            pic.image = #imageLiteral(resourceName: "denglong.png")
            MyButton.setTitle("熄灭灯笼🏮", for: .normal)
        }
        else{
            myLabel.backgroundColor = UIColor.black
            pic.image = #imageLiteral(resourceName: "denglong-2.png")
            MyButton.setTitle("点亮灯笼🏮", for: .normal)
            
        }
    }
    
}


