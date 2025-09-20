//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by 中尾司 on 2025/09/04.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    //シンバルの音源データを読み込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    //シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    
    //ギターの音源データを読み込み
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    //シンバル用プレイヤーの変数
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do {
            //シンバル用のプレイヤーに、音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            
            //シンバルの音源再生
            cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました!")
        }
    }//cymbalPlay ここまで
    
    func guitarPlay() {
        do {
            //シンバル用のプレイヤーに、音源データを指定
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            
            //シンバルの音源再生
            guitarPlayer.play()
        } catch {
            print("ギターで、エラーが発生しました!")
        }
    }//guitarPlay ここまで
}
