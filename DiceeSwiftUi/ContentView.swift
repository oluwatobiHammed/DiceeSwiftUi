//
//  ContentView.swift
//  DiceeSwiftUi
//
//  Created by user on 10/10/2019.
//  Copyright © 2019 Oladipupo Oluwatobi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   @State var leftDiceNumber = 1
   @State  var rightDiceNumber = 1
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack{
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action:{
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("ROLL")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    
                }
                .background(Color.red)
            }
         
        }
    }
}

struct DiceView: View {
     let n: Int
    
     var body: some View {
        Image("dice\(n)")
        .resizable()
        .aspectRatio(1, contentMode: .fit)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
