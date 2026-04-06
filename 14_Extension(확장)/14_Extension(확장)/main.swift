//
//  main.swift
//  14_Extension(확장)
//
//  Created by electrozone on 3/26/26.
//

import Foundation

//Extension
//Extension은 struct, class 타입에 새로운 기능을 추가할수 있는 기능
extension Int {//commend클릭
    var isEven: Bool {
        return self%2 == 0
    }
    var isOdd: Bool {
        return self%2 == 1
    }
}//true/false

print(1.isEven)//홀수인지 짝수인지 isEven/isOdd
var num: Int = 3
print(num.isOdd)
