//
//  wordlecloneApp.swift
//  wordleclone
//
//  Created by Shameem Reza on 1/3/22.
//

import SwiftUI

@main
struct wordlecloneApp: App {
    @StateObject var dm = WordleDataModel()
    @StateObject var csManager = ColorSchemeManager()
    var body: some Scene {
        WindowGroup {
            GameView()
                .environmentObject(dm)
                .environmentObject(csManager)
                .onAppear {
                    csManager.applyColorScheme()
                }
        }
    }
}
