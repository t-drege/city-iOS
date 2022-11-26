//
//  PlayerListResponse.swift
//  city_ios
//
//  Created by DREGE Thomas on 26/11/2022.
//

import Foundation

struct PlayerListResponse: Decodable, Identifiable {
    let id: Int
    let firstname: String

    init(from decoder: Decoder) throws {
        let player = try Player(from: decoder)
        id = player.id
        firstname = player.firstname
    }
}
