//
//  main.swift
//  01_상수와 변수
//
//  Created by electrozone on 3/25/26.
//

import Foundation

print("Hello, World!")
print("안녕하세요!")
print(1234)
print("123+456",123+456)
print("😘")

//변수 작성 규칙
//studentName:Camel
//StudentName:Pascal
//student_name:Snake
//첫글자를 숫자나 특수문자로 시작하면 안되나 _는 사용가능

//상수를 사용하려 출력하기(안바뀜:메모리작음)
let message = "Hello World!"
print(message)
//이미 넣은것 let constant

//변수를 사용하여 출력하기(바뀔수 있음:메모리큼)
//assign 문자열로 인식:선언된 타입에 따라 움직임
var message1="Hello Wold!"
message1="안녕하세요!"
//message1=10
print(message1)

//변수 선언 방법(더블쿼트? 싱글쿼트?)
let intLetNum1:Int=200//타입을 뒤에 쓴다.
var strVarStr1:String="abc"

//상수 선언 후에 나중에 값 할당하기
let inputA=100
let inputB=200
let sum:Int

sum=inputA+inputB
//변수에 let 할당되면 못바꿈
print(sum)

//한줄에 동시 선언
var aNum=10,bNum=20
//String Interpolation
let age:Int=10//콜론 타입
print("저는 \(age)살 입니다.")
print("저의 형은 \(age+4)살 입니다.")
// "\()"



