//
//  Account.swift
//  SwiftUI-List-Starter
//
//  Created by Alexander Gerus on 29.06.2023.
//

import Foundation

struct Account: Identifiable, Decodable {
    let id: Int
    let name: String
}

struct AccountResponse: Decodable {
    let request: Account
}
