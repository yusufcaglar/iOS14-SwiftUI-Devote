//
//  SoundPlayer.swift
//  Devote
//
//  Created by Yusuf Çağlar on 4.04.2021.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Couldn't find and play the sound file!")
        }
    }
}
