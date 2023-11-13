//
//  DetailModel.swift
//  Breez Test
//
//  Created by Sultan on 9/11/23.
//

import UIKit

struct Users2: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}
