//
//  Calculate.swift
//  MyCalculater
//
//  Created by 孙钰昇 on 2020/10/23.
//

import Foundation

class Calculate {
    var str:String = "0"
    var delflag = false
    func add(string:String){
        if(string=="="){
            tryCalculate()
        }
        else if(string=="AC"){
            clear()
        }
        else if(string=="+/-"){
            str = "0-"+str
            tryCalculate()
        }
        else if(string=="%"){
            if(!(str.contains(".")||str.contains("e"))){
                str.append(".0")
            }
            str = str+"/100"
            tryCalculate()
        }
        else if(string=="×"){
            str.append("*")
        }
        else if(string=="+"){
            str.append("+")
        }
        else if(string=="-"){
            str.append("-")
        }
        else if(string=="÷"){
            if(!str.contains(".")){
                str.append(".0")
            }
            str.append("/")
        }
        else if(string == "."){
            if(!(str[str.index(before: str.endIndex)]==".")){
                str.append(string)
            }
        }
        else{
            if(str=="0"){
                str = ""
            }
            if(delflag){
                delflag = false
                str = ""
            }
            str.append(string)
        }
    }
    func tryCalculate(){
        let exp:NSExpression = NSExpression(format: str)
        let temp = exp.expressionValue(with: nil, context: nil) as! Double
        str = String(temp)
    }
    func getStr()->String{
        return str
    }
    func clear(){
        str = "0"
    }
    func setclear(){
        delflag = true
    }
    func cancle(){
        delflag = false
    }
    func del(){
        if(!(str.isEmpty||delflag)){
            str.removeLast()
        }
    }
}
