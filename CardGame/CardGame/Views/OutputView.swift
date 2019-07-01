//
//  OutputView.swift
//  CardGame
//
//  Created by CHOMINJI on 27/06/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct OutputView {
    static func printCards(of players: PlayersPrintable) {
        for player in players.playersInfo() {
            if let player = player as? Player {
                print("\(player.playerName()) #\(player.playerOrder()) \(player.playerCards()) ")
            } else {
                print("\(player.playerName()) \(player.playerCards())")
            }
        }
    }
    
    static func printResult(of result: HandlingDeckResult) {
        switch result {
        case .reset(let count):
            print("카드 전체를 초기화했습니다.")
            print("총 \(count)장의 카드가 있습니다.")
        case .shuffle(let count):
            print("전체 \(count)장의 카드를 섞었습니다.")
        case .draw(let card, let count):
            if let card = card {
                print(card)
            }
            print("총 \(count)장의 카드가 남아있습니다.")
        }
    }
}
