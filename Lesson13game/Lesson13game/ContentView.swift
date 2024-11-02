//
//  ContentView.swift
//  Lesson13game
//
//  Created by zhenya on 2.11.24.
//

import SwiftUI

struct ContentView: View {
    @State var credits = 1000
    @State var slot1 = 1
    @State var slot2 = 2
    @State var slot3 = 3
    
    var body: some View {
        
        Spacer()
        VStack (spacing: 50.0) {
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            
            Spacer()
            Text("Credits \(credits)")
            
            HStack{
                Image("fruit\(slot1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(slot2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(slot3)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
            //Random
            Button("Spin") {
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                // Update credits based on match or not
                if slot1 == slot2 && slot2 == slot3 {
                    // Match
                    credits += 15
                }
                else {
                    credits -= 5
                }
            }
               .padding()
            .padding(.horizontal, 40)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.pink/*@END_MENU_TOKEN@*/)
            .cornerRadius(25)
            .font(.system(size: 28))
            Spacer()


        }
       
        
        
        
    }
    
}
    #Preview {
        ContentView()
    }
