//
//  Menu.swift
//  CardGame
//
//  Created by 이동영 on 26/06/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

protocol Menu {
    typealias Notice = String
    
    func process(cards: CardDeck) -> (CardDeck,Notice)
}