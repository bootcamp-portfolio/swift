//
//  main.swift
//  Ex03
//
//  Created by electrozone on 3/25/26.
//

import Foundation


/*
  Input your decimal no. :4
  4's factorial value
  */

print("Input your decimal no.: ", terminator: "")
if let input = readLine(), let n = Int(input) {
    var result = 1
    for i in 1...n {
        result *= i
    }
    print("\(n)'s factorial value = \(result)")
} else {
    print("숫자를 입력하세요")
}

var resultNum=1
print("Input your decimal no.: ", terminator: "")
//var inpNum =Int(readLine()?)
var inpNum = Int(readLine()!)
//1=>아래, 1이 아닌경우 위?
//가드렛 방식, 타입정의
if let repNum: Int = inpNum{
    action(repNum:repNum)//변수이름
}else{
    print("Wrong no.")
}

func action(repNum: Int){
    for i in 1...repNum{
        resultNum *= i
    }
    print("\(repNum)'s factorial value = \(resultNum)")
}
