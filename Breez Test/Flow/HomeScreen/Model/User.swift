//
//  User.swift
//  Breez Test
//
//  Created by Sultan on 9/11/23.
//

import UIKit

struct User: Codable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
    let company: Company
}

// MARK: - Address
struct Address: Codable {
    let city: String // Город проживания
    let zipcode: String // Zip-code
}

// MARK: - Company
struct Company: Codable {
    let name: String // Название компании
}
