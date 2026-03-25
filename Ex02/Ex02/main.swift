//
//  main.swift
//  Ex02
//
//  Created by electrozone on 3/25/26.
//

import Foundation


/*// 1부터 10까지의 합계
 var sum: Int = 0
 for i in 1...10 {
     sum += i
 }
 print("1부터 10까지의 합계: \(sum)")

 // 구구단 2단부터 9단까지 출력
 for dan in 2...9 {
     for i in 1...9 {
         print("\(dan) * \(i) = \(dan * i)")
     }
 }

 // names 배열 출력
 for i in 0..<names.count {
     print("Hello, \(names[i])")
 }*/

//:10의 0승부터 10의 10승까지의 제곱승을 구하라
var value = 1
//var value: Int = 1

for i in 0...10 {
    let str = String(value)
    let space = String(repeating: " ", count: 10 - i)
    print("\(space)\(str)")
    value *= 10
}

var dispNum: Double = 1.0

for _ in 0...10{
//    print(String("12.0f, dispNum"))
    print(String(format:"%12.0f",dispNum))
    dispNum*=10
}
