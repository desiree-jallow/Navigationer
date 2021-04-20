//
//  GameDetailsScreen.swift
//  Navigationer
//
//  Created by Desiree on 4/20/21.
//

import SwiftUI

struct GameDetailsScreen: View {
    var game: Game
    var body: some View {
        VStack {
            HStack {
                Text(game.title)
                    .font(.largeTitle)
                Spacer()
                Text("$\(Int(game.price))")
            }
            .padding()
            Text(game.description)
                .padding()
        }
    }
}

struct GameDetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        GameDetailsScreen(game: Game(id: 0, title: "Jedi Fallen Order", description: "A Star Wars game where you slice up storm troopers", price: 59))
    }
}
