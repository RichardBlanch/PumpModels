//
//  Workout.swift
//  Models
//
//  Created by Richard Blanchard on 6/26/18.
//  Copyright © 2018 Richard Blanchard. All rights reserved.
//

import Foundation

public struct Workout: Decodable {
    public let id: UUID
    public let name: String
    public let curatorID: UUID
    public let bodyPart: String
    public let sets: [[WorkoutSet]]?



    public enum CodingKeys: String, CodingKey {
        case workout
        case id
        case name
        case curatorID
        case bodyPart
        case sets
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)

        id = try values.decode(UUID.self, forKey: .id)
        name = try values.decode(String.self, forKey: .name)
        curatorID = try values.decode(UUID.self, forKey: .curatorID)
        bodyPart = try values.decode(String.self, forKey: .bodyPart)
        sets = nil
    }
}
