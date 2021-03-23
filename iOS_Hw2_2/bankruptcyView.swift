//
//  bankruptcyView.swift
//  iOS_Hw2_2
//
//  Created by CK on 2021/3/23.
//

import SwiftUI

struct bankruptcyView: View {
    @Binding var bankruptcy : Bool
    var body: some View {
        ZStack{
            HStack{
                VStack{
                    Text("不過你破產囉嘿嘿")
                    Text("可以儲值或回到首頁重新開始")
                }
                Image("破產")
                
                .resizable()
                .frame(width: 400, height: 400)
                
            }
            
        }.overlay(
            Button(action: {bankruptcy = false}
                   , label:{Image("叉叉")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(50)
                    .offset(x: 60.0
                            , y: 0)
                   } ),alignment: .topTrailing
        )
    }
}

struct bankruptcyView_Previews: PreviewProvider {
    static var previews: some View {
        bankruptcyView(bankruptcy: .constant(true))
            .previewLayout(.fixed(width: 844, height: 390))
            .previewDevice("iPhone 11")
    }
}

