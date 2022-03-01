//
//  HelpView.swift
//  wordleclone
//
//  Created by Shameem Reza on 1/3/22.
//

import SwiftUI

struct HelpView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text(
        """
        Guess the **WORDLE** in 6. tries.
        
        Each guess must be a valid 5 letter word.  Hit the enter button to submit.
        
        After each guess, the color of the tiles will change to show how close your guess was to the word.
        """
                )
                Divider()
                Text("**Examples**")
                VStack(alignment: .leading) {
                    Image("Weary")
                        .resizable()
                        .scaledToFit()
                    Text("The letter **W** is in the word and in the correct spot.")
                    Image("Pills")
                        .resizable()
                        .scaledToFit()
                    Text("The letter **I** is in the word but in the wrong spot.")
                    Image("Vague")
                        .resizable()
                        .scaledToFit()
                    Text("The letter **U** is not in the word in any spot.")
                }
                Divider()
                Text("**Tap the NEW Button for a new WORDLE.**")
                Spacer()
            }
            .frame(width: min(Global.screenWidth - 40, 350))
            .navigationTitle("HOW TO PLAY")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Text("**X**")
                    }
                }
            }
        }
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
