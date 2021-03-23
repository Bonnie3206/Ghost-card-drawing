//
//  SwiftUIView.swift
//  iOS_Hw2_2
//
//  Created by CK on 2021/3/22.
//

import SwiftUI
import AVFoundation
struct SwiftUIView: View {
    
    let player = AVPlayer()

    
    @State var showGamePage = false
    
    var body: some View {
        let fileUrl = Bundle.main.url(forResource: "PuiPui", withExtension: "mp3")!
        let playerItem = AVPlayerItem(url: fileUrl)
        ZStack{
            Image("背景2")
                .resizable()
                .frame(width: 1000, height: 450)
            
            VStack{
                HStack{

                    Text("鬼牌抽起來")
                        .font(.largeTitle)
                        .padding(0)
                        .lineSpacing(10.0)
                        .foregroundColor(.init(red: 0.90, green: 0.1, blue: 0.30))
                    Button(action:{
                            self.player.replaceCurrentItem(with: playerItem)
                            self.player.play()}
                           ,label:{
                            Image("天竺鼠音樂")
                             .resizable()
                                .frame(width:100, height: 90)
                                .cornerRadius(90.0)
                                .shadow(radius: 15 )
                             
                    
                    
                    })
                    
                }.padding(20)
                
                
                Link("規則說明", destination: URL(string: "https://sites.google.com/site/pokerking1313/home/chou-gui-pai")!)
                    .font(.title)
                    .background(Color.white)
                    .foregroundColor(.init(red: 0.9, green: 0.1, blue: 0.1))
                    
                    .padding(5)
                
                Button(action: {showGamePage = true
                    users = [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
                    card.shuffle()
                    licensing()
                    clean()
                },label: {Text("開始玩囉").font(.title)
                    .background(Color.white)
                    .clipShape(Capsule())
                    .padding(5)
                    .foregroundColor(.init(red: 0.9, green: 0.1, blue: 0.1))
                    
                })
                .sheet(isPresented: $showGamePage, content:{
                    ContentView2()
                })
                Button(action: {showGamePage = true
                    users = [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]
                    card.shuffle()
                    licensing()
                    clean()
                    restart()
                },label: {Text("重新開始").font(.title).background(Color.white)
                    .clipShape(Capsule())
                    .foregroundColor(.init(red: 0.9, green: 0.1, blue: 0.1))
                    .padding(5)
                    
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
        SwiftUIView().previewLayout(.fixed(width: 844, height: 390))
            .previewDevice("iPhone 11")
    }
}
