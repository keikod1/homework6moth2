//
//  Math.swift
//  home work №6 2moth
//
//  Created by my macbook on 24/12/21.
//

import Foundation

class Math{
    
    private var num = readLine()
    private var num2 = readLine()
    private var num3 = readLine()

    func calculator(){
    
    switch num {
    case "-":
        print("итог: = \((Int(num2!) ?? 0) - (Int(num3!) ?? 0))")
    case "+":
        print("итог: = \((Int(num2!) ?? 0) + (Int(num3!) ?? 0))")
    case "*":
        print("итог: = \((Int(num2!) ?? 0) * (Int(num3!) ?? 0))")
    case "/":
        print("итог: = \((Float(num2!) ?? 0) / (Float(num3!) ?? 0))")
    case "√":
        func sqrt(num2:Int)-> Double {
            var x1:Double = (Double(num2) * 1.0) / 2;
            var x2:Double = (x1 + (Double(num2) / x1)) / 2;
            while(abs(x1 - x2) >= 0.0000001){
                x1 = x2;
                x2 = (x1 + (Double(num2) / x1)) / 2;
                }
            return Double(x2);
          }
        print(sqrt(num2: Int(Double(num2!) ?? 0) ))
//    case "Cos":
////        print("итог: = \(cos(num2)) ")
    default:
        print("выбранная операция не правильная!")
    }
    }
}
