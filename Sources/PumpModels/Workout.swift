//
//  Workout.swift
//  Models
//
//  Created by Richard Blanchard on 6/26/18.
//  Copyright © 2018 Richard Blanchard. All rights reserved.
//

import Foundation

public struct Workout: Codable {
    public var id: UUID?
    public var name: String
    public var curatorID: UUID
    public var bodyPart: String
    public let sets: [[WorkoutSet]]

    public init(id: UUID, name: String, bodyPart: String, curatorID: UUID) {
        self.id = id
        self.name = name
        self.bodyPart = bodyPart
        self.curatorID = curatorID
        self.sets = []
    }

    enum CodingKeys: String, CodingKey {
        case workout
        case id
        case name
        case curatorID
        case bodyPart
        case sets
    }

    enum WorkoutPayloadCodingKeys: String, CodingKey {
        case id
        case name
        case curatorID
        case bodyPart
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        if let workoutContainer = try? container.nestedContainer(keyedBy: WorkoutPayloadCodingKeys.self, forKey: .workout) {
            id = try workoutContainer.decode(UUID.self, forKey: WorkoutPayloadCodingKeys.id)
            name = try workoutContainer.decode(String.self, forKey: WorkoutPayloadCodingKeys.name)
            bodyPart = try workoutContainer.decode(String.self, forKey: WorkoutPayloadCodingKeys.bodyPart)
            curatorID = try workoutContainer.decode(UUID.self, forKey: WorkoutPayloadCodingKeys.curatorID)
            sets = try container.decode([[WorkoutSet]].self, forKey: CodingKeys.sets)

        } else {
            id = try container.decode(UUID.self, forKey: CodingKeys.id)
            name = try container.decode(String.self, forKey: CodingKeys.name)
            bodyPart = try container.decode(String.self, forKey: CodingKeys.bodyPart)
            curatorID = try container.decode(UUID.self, forKey: CodingKeys.curatorID)
            sets = []
        }
    }

    public func encode(to encoder: Encoder) throws {
        fatalError()
    }
}
