//
//  winGameView.swift
//  iOS_Hw2_2
//
//  Created by CK on 2021/3/23.
//

import SwiftUI

struct winGameView: View {
    @Binding var winTheGame : Bool
    var body: some View {
        ZStack{
            HStack{
                VStack{
                    Text("You win！錢錢得2000")
                    Text("回到首頁後，開始遊戲再玩一次吧")
                }
                Image("win")
                
                .resizable()
                .frame(width: 400, height: 400)
                
            }
        }.overlay(
            Button(action: {winTheGame = false
                users = [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
                card.shuffle()
                licensing()
                clean()

            }
                   , label:{Image("叉叉")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(60)
                    
                   } ),alignment: .topTrailing
        )
    }
}

struct winGameView_Previews: PreviewProvider {
    static var previews: some View {
        winGameView(winTheGame: .constant(true))
            .previewLayout(.fixed(width: 844, height: 390))
            .previewDevice("iPhone 11")
    }
}
