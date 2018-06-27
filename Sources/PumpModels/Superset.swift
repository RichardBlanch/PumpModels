//
//  Superset.swift
//  PumpModels
//
//  Created by Richard Blanchard on 6/27/18.
//

import Foundation

final class Superset: Codable {
    var id: UUID?
    var identifier: String!
    var workoutSets: [WorkoutSet]?

    init(identifier: String) {
        self.identifier = identifier
    }
}
