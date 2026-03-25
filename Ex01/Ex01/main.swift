//
//  main.swift
//  Ex01
//
//  Created by electrozone on 3/25/26.
//

import Foundation

/*
 
 Input your decimal no. :5

 *
 **
 ***
 ****
 *****
 ****
 ***
 **
 *
 
 */

print("Input your decimal no.: ", terminator: "")

if let input = readLine(), let n = Int(input) {

    // 증가
    for i in 1...n {
        print(String(repeating: "*", count: i))
    }

    // 감소
    for i in stride(from: n - 1, through: 1, by: -1) {
        print(String(repeating: "*", count: i))
    }

} else {
    print("숫자를 입력하세요")
}
