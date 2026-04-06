//
//  main.swift
//  13_closure(함수)
//
//  Created by electrozone on 3/26/26.
//

import Foundation
//class->struct->enum
//function(작은함수:closure)
func sumFunction(num1: Int, num2: Int) -> Int{
    return num1 + num2
}

var sumResult: Int = sumFunction(num1: 10, num2: 20)
print(sumResult)

//closure
var sumClosure = {
    (num1: Int, num2: Int) -> Int in
    return num1 + num2
}
//closure만 가능한 ui들이 있음
sumResult = sumClosure(10, 20)
print(sumResult)

