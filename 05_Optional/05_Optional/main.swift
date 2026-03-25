//
//  main.swift
//  05_Optional
//
//  Created by electrozone on 3/25/26.
//

import Foundation
//로직 구현시 사용
/*
 Optional
 -  데이터가 있을수도 있고 없을수도 있다.
 - nil값을 포함 할수도 있고,안할수도 있다.
 */

//암시적 추출 옵셔널 : 강제 : forced unwrapping(메모리 체크없이 무조건 unwrapping)
let constantNum = 100//nil값 쓸수 없음
//let optionalNum : Int! = 100//정의? 해지!
var optionalNum : Int? = nil//정의? 해지!
optionalNum=100
print(optionalNum! + 10)//optional->!

//optional unwrapping
//nil check + 안전한 추출값 추출(memory에 변수의 값이 있는지 없는지를 확인하고 추출한다.)
//if let
var myName: String? = nil
myName="apple"
if let name = myName {//var로 써도 된다.
    print("my name is \(name)")//nil이 아니면
}else{
    print("my name is nil")
}

var myName2: String? = "James"
var yourName2: String? = nil

if let name2 = myName2, let friend = yourName2{
    print("\(name2) and \(friend)")//and조건
}else{
    print("nil")
}

//guard let
func multiplyByTen(value:Int?){
    guard let number = value, number<10 else{
        return//optional 정의
    }
    let result = number*10
    print(result)
}
//multiplyByTen(value: 5)
multiplyByTen(value: nil)
