//
//  WordleDataModel.swift
//  wordleclone
//
//  Created by Shameem Reza on 1/3/22.
//

import SwiftUI

class WordleDataModel: ObservableObject {
    @Published var guessess: [Guess] = []
    
    init() {
        newGame()
    }
    
    func newGame() {
        populateDefaults()
    }
    
    func populateDefaults() {
        guessess = []
        for index in 0...5 {
            guessess.append(Guess(index: index))
        }
    }
}
