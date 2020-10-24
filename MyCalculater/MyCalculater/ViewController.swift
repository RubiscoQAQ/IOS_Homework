//
//  ViewController.swift
//  MyCalculater
//
//  Created by 孙钰昇 on 2020/10/19.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var answer: UIButton!
    

    var calculate = Calculate()
    @IBAction func buttonListener(_ sender: UIButton) {
        if let str = sender.title(for:.normal){
            calculate.add(string: str)
            calculate.cancle()
            let s = calculate.getStr()
            showAnswer(s: s)
            if(str=="="||str=="%"||str=="+/-"){
                calculate.setclear()
            }
        }
    }
    func showAnswer(s:String){
        if(s==""){
            answer.setTitle("0", for: .normal)
        }
        else if(s.count>1&&s[s.index(before: s.endIndex)]=="0"&&s[s.index(s.endIndex, offsetBy: -2)]=="."){
            var res = s
            res.remove(at: res.index(before: res.endIndex))
            res.remove(at: res.index(before: res.endIndex))
            answer.setTitle(res, for: .normal)       //针对“.0”情况的特判,使得无意义的.0不必输出
        }
        else{
            answer.setTitle(s, for: .normal)
        }
    }
    @IBAction func backSpace(_ sender: UIButton) {
        calculate.del()
        let s = calculate.getStr()
        showAnswer(s: s)
    }
}

