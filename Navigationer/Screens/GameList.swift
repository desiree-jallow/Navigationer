//
//  GameList.swift
//  Navigationer
//
//  Created by Desiree on 4/20/21.
//

import SwiftUI

struct GameList: View {
    var games: [Game]
    var body: some View {
        NavigationView {
            List(games) { game in
                NavigationLink(destination: GameDetailsScreen(game: game)) {
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text(game.title)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Spacer()
                            Text("$\(Int(game.price))")
                                .foregroundColor(.green)
                        }
                        
                        Text(game.description)
                            .padding(.top, 6.0)
                      
                    }
                }
            }
            .navigationBarTitle("Games")
        }

    }
}

struct GameList_Previews: PreviewProvider {
    static var previews: some View {
        GameList(games: [Game(id: 0, title: "Jedi Fallen Order", description: "A Star Wars game where you slice up storm troopers", price: 59), Game(id: 1, title: "Fallout 76", description: "A post-apocalyptic game where you can shoot mutants and stuff", price: 50),Game(id: 2, title: "Modern Warfare", description: "A game about modern combat", price: 49)])
    }
}

