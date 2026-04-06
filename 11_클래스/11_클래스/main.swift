//
//  main.swift
//  11_클래스
//
//  Created by electrozone on 3/26/26.
//

import Foundation

class Sample1{
    var sampleProperty: Int = 10
    let fixedSampleProperty: Int = 10
    static var typeProperty: Int = 100
    
    func instanceMethod(){
        print("Instance Method")
    }
    static func typeMethod(){
        print("Type Method")
    }
}
var sample1: Sample1 = Sample1()
print(sample1.sampleProperty)

//Class와 Struct
//클래스와 구조체는 프로그램의 코드를 조직화하기 위해 일반적으로 사용.
//객체 지향 프로그램을 위한 필수요소 이기도하다.

struct Resolution{
    var width = 0
    var height = 0
}

class VideoMode{
    var resolution = Resolution()
    var interlaced: Bool = false
    var frameRate = 0.0
    //var frameRate: Double = 0.0
    var name: String?
}

let someVideoMode = VideoMode()
someVideoMode.resolution.width = 1920
someVideoMode.resolution.height = 1080
//someVideoMode.interlaced = true
//someVideoMode.frameRate = 24.0
//someVideoMode.name = "4K Ultra HD"

let st1: Exam = Exam()//비어있는 생성자
st1.input(name: "유비", score: 76,67,88)

//class의 상속
//parent class
class Animal{
    var name: String
    init(name: String){//생성자 키워드
        self.name = name
    }
    func speak(){
        print("\(name)이 소리를 냅니다.")
    }
}
//인스턴스 let
let animal: Animal = Animal(name: "고래")
animal.speak()

//Sub Class//상속
class Dog: Animal{
    override func speak() {
           
        print("\(name)이 멍멍 짖습니다.")
    }
}
let dog: Dog = Dog(name: "멍게")
dog.speak()

class Dog1: Animal{
    var breed: String
    init(name: String, breed: String){
        self.breed = breed
        super.init(name: name)
    }
    override func speak() {
    print("\(name)(\(breed))가 멍멍 짖습니다.")
    }
}

let dog1: Dog1 = Dog1(name: "멍게", breed: "치와와")
dog1.speak()


//lazy property : 클래스의 인스턴스가 생성될때 초기화 되지 않고 실제로 사용할때 초기화되는 프라퍼티
//일반 class
class OnCreate{
    init(){
        print("OnCreate")
    }
}

var onCreate = OnCreate()
print("-----------------")

class NormalTest{
    var late = OnCreate()
    init(){
        print("Normal Test")
    }
}

var normalTest = NormalTest()
print("------------------")

class LazyTest{
    lazy var late = OnCreate()
    init(){
        print("lazy Test")
    }
}

var lazyTest = LazyTest()
print(lazyTest.late)
