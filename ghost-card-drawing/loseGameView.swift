//
//  loseGameView.swift
//  iOS_Hw2_2
//
//  Created by CK on 2021/3/23.
//

import SwiftUI

struct loseGameView: View {
    @Binding var loseTheGame : Bool
    var body: some View {
        ZStack{
            HStack{
                VStack{
                    Text("你輸囉！錢錢少2000")
                    Text("回到首頁後，開始遊戲再玩一次吧")
                }
                Image("失敗")
                
                .resizable()
                .frame(width: 400, height: 300)
                
            }
        }.overlay(
            Button(action: {loseTheGame = false}
                   , label:{Image("叉叉")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(-10)
                   } ),alignment: .topTrailing
        )
    }
}

struct loseGameView_Previews: PreviewProvider {
    static var previews: some View {
        loseGameView(loseTheGame: .constant(true))
            .previewLayout(.fixed(width: 844, height: 390))
            .previewDevice("iPhone 11")
    }
}
