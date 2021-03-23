//
//  SwiftUIView.swift
//  iOS_Hw2_2
//
//  Created by CK on 2021/3/22.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var showGamePage = false
    
    var body: some View {
        ZStack{
            Image("撲克牌開頭")
                .resizable()
                .scaledToFit()
            
            VStack{
                
                Link("規則", destination: URL(string: "https://sites.google.com/site/pokerking1313/home/chou-gui-pai")!)
                    .font(.largeTitle)
                
                Button(action: {showGamePage = true
                    users = [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
                    card.shuffle()
                    licensing()
                    clean()
                },label: {Text("開始玩囉").font(.largeTitle)
                    
                })
                .sheet(isPresented: $showGamePage, content:{
                    ContentView2()
                })
                
            }
            
        }
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
