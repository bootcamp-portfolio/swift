//
//  main.swift
//  06_collection
//
//  Created by electrozone on 3/25/26.
//

import Foundation

/*
 Collection : 여러값들을 묶어서 하나의 변수로 사용
 1) Array : 순서가 있는 리스트 컬렉션
 2) Dictionary : Key와 Value의 쌍으로 이루어진 컬렉션
 3) Set : 순서가 없고, Unique Data 컬렉션
 4) Tuple : 여러개의 값을 하나의 복합 값으로 묶을수 있는 간단한 방법
 */

//var intVariable: Array<Int> = Array<Int>()
var intVariable:[Int]=[]
intVariable.append(10)
intVariable.append(20)
intVariable.append(30)

print(intVariable)
print(intVariable[0])
print(intVariable[0...1])//범위연산자 0~1:이상 이하(미만아님)
intVariable.remove(at: 0)
intVariable.removeLast()
intVariable.removeAll()
print(intVariable.count)

var doubleArray:[Double]=[]
var stringArray:[String]=[]

var shoppingList:[String]=["Eggs","Milk"]

for i in shoppingList{
    print(i)
}
//추가
shoppingList.append("Four")
shoppingList+=["Baking Powder"]
shoppingList+=["Chocolate Spread","Cheese","Butter"]

print(shoppingList, shoppingList.count)

//수정
shoppingList[0]="Egg"
print(shoppingList, shoppingList.count)

//특정위치로 변경 및 삭제
shoppingList[4...6]=["Banana","Orange"]
print(shoppingList, shoppingList.count)

//shoppingList[4...6].removeAll()

//Array=List(json=>array)
//Dictionary
var scoreDictionary:[String:Int]=[:]
scoreDictionary["유비"]=100
scoreDictionary["관우"]=90
scoreDictionary["장비"]=80
//콜론=딕셔너리
print(scoreDictionary)

//Set
var setData:Set=[1,2,2,2,3,3,3,4,4]
print(Set(setData).sorted())

//Tuple
let person = ("John",30)
print(person.0, person.1)

let person1 = (name:"John", age:30)
print(person1.name,person1.age)
//함수
func getUserInfo() -> (name:String, age:Int){//타입
    return("Alex",40)
}

let user = getUserInfo()
print("이름:\(user.name), 나이:\(user.age)")

