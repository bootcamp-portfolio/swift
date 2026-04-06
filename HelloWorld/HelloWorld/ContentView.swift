//
//  ContentView.swift
//  HelloWorld
//
//  Created by electrozone on 3/26/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {//구성하다
//        VStack {//밑으로 배열하다
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
////        .padding()
        Text("Hello World!")//기본이 센터
            .font(.system(size: 20))
            .bold()
            .foregroundStyle(.blue)
            .padding()//순서중요
            .background(.yellow)
    }
}

#Preview {
    ContentView()
}//
