//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Egor Mikhalevich on 7.06.23.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
