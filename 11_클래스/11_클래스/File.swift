//
//  File.swift
//  11_클래스
//
//  Created by electrozone on 3/26/26.
//

//import Foundation

class Exam{//property
    var name = ""
    var score:[Int] = []
    var tot=0,avg=0.0//전역

    func input(name: String,score:Int...){
//        tot = 0//지역변수
//        avg = 0.0
        self.name = name
        self.score = score//변수이름이 같기때문
        calc()
        result()
    }
    func calc(){
        for i in score{
            tot += i
        }//전역변수
        avg = Double(tot)/Double(score.count)
    }
func result(){
        print("\(name)님의 총점은 \(tot)이고 평균은 \(avg)입니다.")
    //print("\(name)님의 총점은 \(tot)이고 평균은 \(avg)입니다.")
    }
}
