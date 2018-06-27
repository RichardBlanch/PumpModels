//
//  Workout.swift
//  Models
//
//  Created by Richard Blanchard on 6/26/18.
//  Copyright © 2018 Richard Blanchard. All rights reserved.
//

import Foundation

public struct Workout: Codable {
    public let id: UUID
    public let name: String
    public let curatorID: UUID
    public let bodyPart: String
}
