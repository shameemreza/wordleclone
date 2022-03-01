//
//  WordleDataModel.swift
//  wordleclone
//
//  Created by Shameem Reza on 1/3/22.
//

import SwiftUI

class WordleDataModel: ObservableObject {
    @Published var guessess: [Guess] = []
    
    var keyColors = [String : Color]()
    
    init() {
        newGame()
    }
    
    // MARK: - SETUP
    func newGame() {
        populateDefaults()
    }
    
    func populateDefaults() {
        guessess = []
        for index in 0...5 {
            guessess.append(Guess(index: index))
        }
        //reset keyboard colors
        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        for char in letters {
            keyColors[String(char)] = .unused
        }
    }
    
    // MARK: - GMAE PLAY
    func addToCurrentWord(_ letter: String) {
        
    }
    
    func enterWord() {
        
    }
    
    func removeLetterFromCurrentWord() {
        
    }
}
