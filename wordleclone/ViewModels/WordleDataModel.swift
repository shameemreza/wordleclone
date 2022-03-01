//
//  WordleDataModel.swift
//  wordleclone
//
//  Created by Shameem Reza on 1/3/22.
//

import SwiftUI

class WordleDataModel: ObservableObject {
    @Published var guessess: [Guess] = []
    @Published var incorrectAttemps = [Int](repeating: 0, count: 6)
    
    var keyColors = [String : Color]()
    var selectedWord = ""
    var currentWord = ""
    var tryIndex = 0
    var inPlay = false
    var gameOver = false
    
    var gameStarted: Bool {
        !currentWord.isEmpty || tryIndex > 0
    }
    
    var disabledKeys: Bool {
        !inPlay || currentWord.count == 5
    }
    
    init() {
        newGame()
    }
    
    // MARK: - SETUP
    func newGame() {
        populateDefaults()
        selectedWord = Global.commonWords.randomElement()!
        currentWord = ""
        inPlay = true
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
        currentWord += letter
        updateRow()
    }
    
    func enterWord() {
        if currentWord == selectedWord {
            gameOver = true
            print("You Win")
            setCurrentGuessColors()
            inPlay = false
        } else {
            if verifyWord() {
                print("Valid Word")
                setCurrentGuessColors()
                tryIndex += 1
                if tryIndex == 6 {
                    gameOver = true
                    inPlay = false
                    print("You Lose")
                }
            } else {
                withAnimation {
                    self.incorrectAttemps[tryIndex] += 1
                }
                incorrectAttemps[tryIndex] = 0
            }
        }
    }
    
    func removeLetterFromCurrentWord() {
        currentWord.removeLast()
        updateRow()
    }
    
    func updateRow() {
        let guessWord = currentWord.padding(toLength: 5, withPad: " ", startingAt: 0)
        guessess[tryIndex].word = guessWord
    }
    
    func verifyWord() -> Bool {
        UIReferenceLibraryViewController.dictionaryHasDefinition(forTerm: currentWord)
    }
    
    func setCurrentGuessColors() {
        let correctLetters = selectedWord.map { String($0) }
                var frequency = [String : Int]()
                for letter in correctLetters {
                    frequency[letter, default: 0] += 1
                }
                for index in 0...4 {
                    let correctLetter = correctLetters[index]
                    let guessLetter = guessess[tryIndex].guessLetters[index]
                    if guessLetter == correctLetter {
                        guessess[tryIndex].bgColors[index] = .correct
                        frequency[guessLetter]! -= 1
                    }
                }
                
                for index in 0...4 {
                    let guessLetter = guessess[tryIndex].guessLetters[index]
                    if correctLetters.contains(guessLetter)
                        && guessess[tryIndex].bgColors[index] != .correct
                        && frequency[guessLetter]! > 0 {
                        guessess[tryIndex].bgColors[index] = .misplaced
                        frequency[guessLetter]! -= 1
                    }
                }
                
                print(selectedWord)
                print(guessess[tryIndex].word)
    }
}
