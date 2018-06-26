//
//  WorkoutSet.swift
//  Models
//
//  Created by Richard Blanchard on 6/26/18.
//  Copyright © 2018 Richard Blanchard. All rights reserved.
//

import Foundation

public struct WorkoutSet: Codable {
    public let id: UUID
    public let name: String
    public let description: String
    public let bodyPart: String
}
