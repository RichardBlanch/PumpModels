//
//  User.swift
//  PumpModels
//
//  Created by Richard Blanchard on 6/30/18.
//

import Foundation

public class User: Codable {
    public var name: String
    public var username: String
    public var password: String

    public init(name: String, username: String, password: String) {
        self.name = name
        self.username = username
        self.password = password
    }
}
