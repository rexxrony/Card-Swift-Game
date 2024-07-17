//
//  ContentView.swift
//  demo4
//
//  Created by Rex Rony Jacob on 13/06/23a.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard:String = "card7"
    @State var cpuCard:String = "card13"
    
    @State var playerScore:Int = 0
    @State var cpuScore:Int = 0
    
    var body: some View {
        ZStack{

            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                //BUTTON/////
    
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                    
               .foregroundColor(.white)
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                   
                
            }
        }
    }
    
    func deal(){
        //print("Deal cards")
        var playerCardValue:Int = Int.random(in: 2...14)
        var cpuCardValue:Int = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardValue) //randomizer inclusive of 2 and 14
        cpuCard = "card" + String(cpuCardValue)
        //score update
        if playerCardValue>=cpuCardValue
        {
            playerScore += 1
        }
        else if cpuCardValue>playerCardValue
        {
            cpuScore += 1
        }
        else{
            //tie
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
