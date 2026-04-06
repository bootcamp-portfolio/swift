//
//  main.swift
//  10_구조체(struct)
//
//  Created by electrozone on 3/26/26.
//

import Foundation

//구조체:class 와 유사한 기능을 하는 사용자 정의 데이터 타입
//상속이 불가능하다는 점을 제외하고 class와 동일하다.

struct Sample{
    //property
    var sampleProperty: Int = 10 //가변 property
    let fixedSampleProperty: Int=10//불변 property
    static var typeProperty: Int=1000
    
    func instanceMethod(){
        print("instance method")
    }
    static func typeMethod(){
        print("type method")
    }
}
//구조체 사용
var samp: Sample = Sample()//생성자
//extension Int 확장 객체지향언어
print(samp.sampleProperty)
//가변 프라퍼티 값을 바꿀수 있음
samp.sampleProperty=100
print(samp.sampleProperty)


var samp1: Sample = Sample()
print(samp1.sampleProperty)

//static의 typeproperty
Sample.typeProperty = 300

Sample.typeMethod()
//static유무 쓰임 다름
struct Student{
    var name: String = "unknown"
    var `class`: String = "unknown"
    static func selfIntroduce(){
        print("학생 타입 입니다.")
    }
    func selfIntroduce(){
        print("저는 \(`class`)반 \(name) 입니다.")
    }
}
Student.selfIntroduce()

var james: Student = Student()
james.name="James"
james.class="스위프트"
james.selfIntroduce()

var cathy: Student = Student()//생성자
cathy.name="Cathy"
cathy.class="Swift"
cathy.selfIntroduce()

