//
//  main.swift
//  02_데이터 타입
//
//  Created by electrozone on 3/25/26.
//

import Foundation
//범위 확인
print("Int : \(Int.min) ~ \(Int.max)")
print("Int8 : \(Int8.min) ~ \(Int8.max)")
print("Int16 : \(Int16.min) ~ \(Int16.max)")
print("Int32 : \(Int32.min) ~ \(Int32.max)")
print("Int64 : \(Int64.min) ~ \(Int64.max)")

//기본 데이터 타입
//Bool
var someBool: Bool = true
someBool=false

//Int
var someInt: Int = -100
someInt=100
someInt=100_000//천단위쉼표

//UInt(Unssigned:양수만)
var someUInt:UInt=100
print("UInt8 : \(UInt8.min) ~ \(UInt8.max)")

//Float
var someFloat:Float=3.14
//print("Float : \(Float.min) ~ \(Float.max)")

//Double
var someDouble:Double=3.14
//print("Double : \(Double.min) ~ \(Double.max)")

//type
print(type(of:someDouble))

//숫자 Type 변환 //최근 언어와 비슷
let doubleNum = 4.99999
var castToInt=Int(doubleNum)
var roundToInt=Int(doubleNum.rounded())
print("Origin:\(doubleNum), Cast1: \(castToInt), Round1: \(roundToInt)")

//Character
var someCharacter: Character="A"
//String
var someString:String="Hello World!"
someString=someString+"안녕하세요"
print(someString)

someString="""
12345
 abcde
  가나다라마
"""
print(someString)

//문자열과 특수문자
print("aa\t\tbb\n\ncc")

let wiseWords = "\"Imagination is more important than knowledge.\" - Einstein"
print(wiseWords)

var emptySting = ""
var anotherEmptyString: String = String()
//swift 객체형 언어 상속받아 사용
var emptyString2:String

if emptySting.isEmpty{
    print("Nothing to see here.")
}//if문과 동일

//문자배열을 이용한 문자열 출력(array)
let catCharacters:[Character]=["C","a","t"]
var catString=String(catCharacters)
catString.append("!")
print(catString)

let str="12345,6789"
print("str has \(str.count) characters.")

if str.count == 0{
    print("Data가 없습니다.")
}else{
    print("Data는 \(str) 입니다.")
}

let multiplier=3//정수
print("\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)")//정수*실수 불가

//문자열 인덱스//array에서 사용
let greeting="Guten Tag!"
print(greeting[greeting.startIndex])
print(greeting[greeting.index(before: greeting.endIndex)])
print(greeting[greeting.index(after: greeting.startIndex)])
print(greeting[greeting.index(greeting.startIndex, offsetBy: 7)])

//Any, nil
//Any : Swift의 모든 Type
//Any : Swift의 모든 Type을 지칭하는 키워드
//nil : 없음을 의미

//Any
var someAny: Any = 100
someAny = "Hello"
someAny = 123.12

var someAny1: Double = 234.56
print(someAny as! Double + someAny1)//타입 다르면 연산불가

//Tuple
var country=(82,"KR","Korea")
print("Country code: \(country.0), Country name: \(country.1), Country full name: \(country.2)")

var country1=(countryCode:82, CountryName: "KR", countryfullName: "korea")
print("\(country1.countryCode)")
//튜플을 딕셔너리 처럼 사용 가능

//Tuple을 사용하여 직사각형의 넓이와 둘레 구현(모델링?)
typealias Rectangle = (name: String, w:Int, h:Int, area:Int, border:Int)

var r1:Rectangle=("직사각형1",5,6,0,0)
var r2:Rectangle=("직사각형2",15,7,0,0)

r1.area=r1.w*r1.h
r1.border=2*(r1.w+r1.h)
print(r1)
//swift는 데이터 처리용 언어이다.?

r2.area=r2.w*r2.h
r2.border=2*(r2.w+r2.h)
print(r2)

