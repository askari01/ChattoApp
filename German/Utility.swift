//
//  Utility.swift
//  ChattoApp
//
//  Created by Enio Ohmaye on 2/19/16.
//  Copyright © 2016 Badoo. All rights reserved.
//

import Foundation
import AVFoundation


extension CollectionType {
    /// Return a copy of `self` with its elements shuffled
    func shuffle() -> [Generator.Element] {
        var list = Array(self)
        list.shuffleInPlace()
        return list
    }
}

extension MutableCollectionType where Index == Int {
    /// Shuffle the elements of `self` in-place.
    mutating func shuffleInPlace() {
        // empty and single-element collections don't shuffle
        if count < 2 { return }
        
        for i in 0..<count - 1 {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}


class Speaker {
    static var synthesizer = AVSpeechSynthesizer()
    
    class func say( text: String, lang: String ) {
        let utterance = AVSpeechUtterance(string: text)
        //utterance.rate = 0.2
        utterance.voice = AVSpeechSynthesisVoice(language: lang)
        synthesizer.speakUtterance(utterance)
    }
    
    
}

