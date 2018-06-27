//
//  Superset.swift
//  PumpModels
//
//  Created by Richard Blanchard on 6/27/18.
//

import Foundation

public final class Superset: Codable {
    public var id: UUID?
    public var identifier: String!
    public var workoutSets: [WorkoutSet]?

    public init(identifier: String) {
        self.identifier = identifier
    }
}
