//
//  main.swift
//  09_함수
//
//  Created by electrozone on 3/25/26.
//

import Foundation

func integerSum(num1: Int, num2: Int) -> Int {//return type
    return num1 + num2
}
print(integerSum(num1: 1, num2: 2))
print(integerSum(num1: 10, num2: 20))

func integerSum1(_ num1: Int, _ num2: Int) -> Int {//return type
    return num1 + num2
}
print(integerSum1(2, 3))//파라미터 이름?

func integerSum2(숫자1 num1: Int, 숫자2 num2: Int) -> Int {//return type
    return num1 + num2
}
print(integerSum2(숫자1: 10, 숫자2: 20))//보여주기?

//기본값
func greeting(friend: String, me: String="조조"){
    print("Hello \(friend), I'm \(me)")
}

greeting(friend: "유비")
greeting(friend: "장비", me:"유비")

//Ex
//시작 숫자부터 끝 숫자의 합계를 구하는 함수 만들기

func addRange(start: Int, end: Int) -> String{
    var sum: Int = 0
    for i in start...end {
        sum += i
    }
    return "\(start)부터 \(end)까지의 합은 \(sum) 입니다."
}
print(addRange(start:1, end:100))
//1부터 100까지의 합은 5050입니다.

//Ex
//해당 범위의 짝수와 홀수를 판단하여 합계를 구하는 함수 만들기
/*func decisionRange(type: String, start: Int, end: Int) -> String{
    var sum = 0
    for i in start...end {
        
        sum += i
    }
    return "\(start)부터 \(end)까지 수중 짝수의 합은 \(sum) 입니다."
}

print(decisionRange(type:"even",start:1,end:10))

func decisionRange(start: Int, end: Int) -> String{
    var sum: Int = 0
    for i in start...end {
        sum += i
    }
    return "\(start)부터 \(end)까지 수중 홀수의 합은 \(sum) 입니다."
}

print(decisionRange(type:"odd",start:1,end:10))
//1부터 10까지 수중 짝수의 합은 30입니다.
//1부터 10까지 수중 홀수의 합은 25입니다.

func decisionRange(type: String, start: Int, end: Int) -> String {
    var sum = 0
    if type != "even" && type != "odd" {
        return "입력된 항목이 잘못되었습니다."
    }
        for i in start...end {
            if type == "even" {
                if i % 2 == 0 {
                    sum += i
                }
            } else if type == "odd" {
                if i % 2 != 0 {
                    sum += i
                }
            }
        }
        return "\(start)부터 \(end)까지 수중 \(type == "even" ? "짝수" : "홀수")의 합은 \(sum) 입니다."
    }
 
print(decisionRange(type: "even", start: 1, end: 10))
print(decisionRange(type: "odd", start: 1, end: 10))
print(decisionRange(type: "abc", start: 1, end: 10))

func decisionRange(type: String, start: Int, end: Int) -> String {
 var sum = 0
 
 if type == "even" {
     for i in start...end {
         if i % 2 == 0 {
             sum += i
         }
     }
     return "\(start)~\(end) 짝수합: \(sum)"
     
 } else if type == "odd" {
     for i in start...end {
         if i % 2 != 0 {
             sum += i
         }
     }
     return "\(start)~\(end) 홀수합: \(sum)"
 }
 
 return "입력된 항목이 잘못되었습니다."
}

func decisionRange(type: String, start: Int, end: Int) -> String {
     var sum = 0
     
     if type != "even" && type != "odd" {
         return "입력된 항목이 잘못되었습니다."
     }
     
     for i in start...end {
         if (type == "even" && i % 2 == 0) ||
            (type == "odd" && i % 2 != 0) {
             sum += i
         }
     }
     
 return "\(start)부터 \(end)까지 수중 \(type)의 합은 \(sum) 입니다."
 }
 */
func isEven(_ num: Int) -> Bool {
    return num % 2 == 0
}

func isOdd(_ num: Int) -> Bool {
    return num % 2 != 0
}

func sumRange(type: String, start: Int, end: Int) -> Int {
    var sum = 0
    
    for i in start...end {
        if (type == "even" && isEven(i)) ||
           (type == "odd" && isOdd(i)) {
            sum += i
        }
    }
    
    return sum
}

func decisionRange(type: String, start: Int, end: Int) -> String {
    if type != "even" && type != "odd" {
        return "입력된 항목이 잘못되었습니다."
    }
    
    let result = sumRange(type: type, start: start, end: end)
    
    return "\(start)부터 \(end)까지 수중 \(type)의 합은 \(result) 입니다."}

//Overloading : 함수의 이름은 중복되어도 매개변수의 갯수로 구분이 가능
//도형의 면적, 둘레를 구하는 함수(원, 직사각형, 직각 삼각형)
func shape(_ r: Double) {
    let pi = 3.14159
    let area = pi * r * r
    let border = 2 * pi * r
    print("원 → 넓이: \(area), 둘레: \(border)")
}

func shape(_ w: Double, _ h: Double) {
    let area = w * h
    let border = 2 * (w + h)
    print("사각형 → 넓이: \(area), 둘레: \(border)")
}

func shape(_ w: Double, _ h: Double, _ l: Double) {
    let area = w * h / 2
    let border = w + h + l
    print("삼각형 → 넓이: \(area), 둘레: \(border)")
}

// 실행
shape(3)
shape(5, 6)
shape(5, 6, 7)//여러개의 return value
func sizeConverter(_ length: Float)->(yard: Float,centimeter:Float,meter:Float){
    let yards = length * 0.027778
    let centimeter = length * 2.54
    let meter = length * 0.0254
    
    return (yards, centimeter, meter)
}
let lengthTuple = sizeConverter(20)
print(lengthTuple)
print(lengthTuple
    .meter)

//가변인자
func mean(score:Int...) -> Double{
    //print(score)//리스트
    print(type(of:score))
    var total=0
    for i in score{
        total+=i
    }
    return Double(total) / Double(score.count)
    
}

print(mean(score:10,20,30))//tuple/list
print(mean(score:10,20,30,40,50))
//변수뒤 타입지정
//렛은 못바꿈 바는 바꿀수 있음
//데이터 처리 잘 안하고 타입정의 모델 클라스 만들지 않고 사용시 튜플
//다트 옵셔널 닐/널 이프렛 가드렛방식 대신 체크하면 됨
//스위프트를 다트랑 파이썬이 배껴감
