//
//  main.swift
//  12_enumerate
//
//  Created by electrozone on 3/26/26.
//

import Foundation
enum Temperature{
    case hot
    case warm
    case cold
    
}
func displayTempInfo(temp:Temperature){//매개변수
    switch temp{
        case .hot:
        print("It is hot")
    case .warm:
        print("It is warm")
    case .cold:
        print("It is cold")
    }
}

displayTempInfo(temp: .hot)

enum ArithemeticOperation{
    case addition
    case subtraction
    case multiplication
    case division
    
    //연산을 수행하는 함수
    func perform(_ num1: Double, _ num2: Double) -> Double{
        switch self{//위의 글자//type받기 if
        case.addition:
            return num1 + num2
        case.subtraction:
            return num1 - num2
        case.multiplication:
            return num1 * num2
        case.division:
            if num2 != 0{
                return num1 / num2
            }else{
                return Double.nan
            }
        }
    }
}
//Enum 연산 사용
let operation = ArithemeticOperation.addition
let result = operation.perform(3.0, 4.0)
print("3 + 4 =  \(result)")

let operation1 = ArithemeticOperation.division
let result1 = operation1.perform(3.0, 0)
print("3 / 0 =  \(result1)")
//생성자가 없음 위치를 정해놓고 사용
//enum 없이 함수나 다른 방법으로 가능
