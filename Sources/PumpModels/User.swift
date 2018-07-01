//
//  User.swift
//  PumpModels
//
//  Created by Richard Blanchard on 6/30/18.
//

import Foundation

public struct User: Codable {
    public var id: UUID?
    public var name: String
    public var username: String
    public var password: String
}
