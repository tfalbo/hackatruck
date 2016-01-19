//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func somatorio(mes: Int) -> Int{
    
    var somatorio: Int
    somatorio = 0
    for valor in 1...mes{
        somatorio += valor
    }
    
    return somatorio
    
}
func wesley_safadao(dia:Int, mes:Int, ano:Int){
    
    var safadeza: Int
    var anjo: Int

    
   
    print (somatorio(mes))
    print (ano/100)
    print (50-dia)
    print ((ano/100)*(50-dia))
    
    safadeza = somatorio(mes)+(ano/100)*(50-dia)
    
    anjo = 100-safadeza
    
    print("Safadeza:\(safadeza)")
    print("Anjo:\(anjo)")
}

wesley_safadao(19, mes: 8, ano: 90)