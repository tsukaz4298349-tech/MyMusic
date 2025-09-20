//
//  ContentView.swift
//  MyMusic
//
//  Created by 中尾司 on 2025/09/04.
//

import SwiftUI

struct ContentView: View {
    //音を鳴らすためのSoundPlayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack {
            //背景画像を指定
            Image(.background)
            //背景を表示するためにレイアウトを整える
                .backgroundModifier()
            
            //水平にレイアウト(横方向にレイアウト)
            HStack {
                //シンバルボタン
                Button {
                    //ボタンをタップした時のアクション
                    //シンバルの音を鳴らす
                    soundPlayer.cymbalPlay()
                } label: {
                    //画像を表示する
                    Image(.cymbal)
                }//シンバルはここまで
                
                //ギターボタン
                Button {
                    //ボタンをタップした時のアクション
                    //シンバルの音を鳴らす
                    soundPlayer.guitarPlay()
                } label: {
                    //画像を表示する
                    Image(.guitar)
                }//ギターボタン終了
            }//HStack終了
        }//ZStack終了
    }
}

#Preview {
    ContentView()
}
