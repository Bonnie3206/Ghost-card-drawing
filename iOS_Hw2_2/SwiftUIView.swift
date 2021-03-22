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
            Button(action: {showGamePage = true
                card.shuffle()
                licensing()
                clean()
            },label: {Text("start").font(.largeTitle)
                
            })
            .sheet(isPresented: $showGamePage, content:{
                ContentView()
            })
        }
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
