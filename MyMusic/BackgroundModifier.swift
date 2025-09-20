//
//  BackgroundModifier.swift
//  MyMusic
//
//  Created by 中尾司 on 2025/09/07.
//

import SwiftUI

extension Image {
    func backgroundModifier() -> some View {
        //画像を表示するImageのインスタンス
        self
        //リサイズする
            .resizable()
        //画面いっぱいになるようにセーフエリア外まで表示されるように指定
            .ignoresSafeArea()
        //アスペクト比(縦横比)
            .scaledToFill()
    }
}
