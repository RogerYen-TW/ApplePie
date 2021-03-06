//
//  Game.swift
//  ApplePie
//
//  Created by Roger and Nicky on 2018/4/25.
//  Copyright © 2018年 Roger and Nicky. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemainings: Int
    var guessedLetters: [Character]
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemainings -= 1
        }
    }
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    
}
