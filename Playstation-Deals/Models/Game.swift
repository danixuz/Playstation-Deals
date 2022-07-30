//
//  Game.swift
//  Playstation-Deals
//
//  Created by Daniel Spalek on 29/07/2022.
//

import Foundation
import SwiftUI

struct Game: Identifiable{
    let id: String = UUID().uuidString
    var gameImage: String
    var description: String
    var price: Double
    var releaseYear: String
    var onSale: Bool = false
    var discountPrice: Double?
    var discountPrecent: Double? {
        guard let discountPrice = discountPrice else{ //force unwrapping
            return nil
        }
        return 100 - ((discountPrice / price) * 100)
    }
    var gameName: String
}


var sampleGames: [Game] = [
    Game(gameImage: "spiderman", description: "Marvel's Spider-Man is an open-world third-person action-adventure game, in which the player controls Peter Parker, under his superhero identity Spider-Man, through Manhattan, New York City to fight crime.", price: 49.99, releaseYear: "2018", gameName: "Marvel's Spider-Man"),
    Game(gameImage: "horizonzerodawn", description: "Horizon Zero Dawn is a 2017 action-adventure game developed by Guerrilla Games and published by Sony Interactive Entertainment. The plot follows Aloy, a young huntress in a world overrun by machines, who sets out to uncover her past.", price: 39.99, releaseYear: "2017", gameName: "Horizon: Zero Dawn"),
    Game(gameImage: "gtav", description: "Grand Theft Auto V is an action-adventure game played from either a third-person or first-person perspective. Players complete missions—linear scenarios with set objectives—to progress through the story. Outside of the missions, players may freely roam the open world.", price: 10.59, releaseYear: "2013", gameName: "Grand Theft Auto V"),
    Game(gameImage: "surgeonsimulator", description: "Surgeon Simulator is a darkly humorous over-the-top operation sim game where players become Nigel Burke, a would-be surgeon taking life into his own shaky hands, performing life-saving surgical maneuvers on a passive patient.", price: 2.99, releaseYear: "2018", gameName: "Surgeon Simulator")
]



