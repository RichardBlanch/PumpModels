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
    public var imageURL: String
    public let sets: [[WorkoutSet]]?

    public init(id: UUID, name: String, bodyPart: String, curatorID: UUID, imageURL: String) {
        self.id = id
        self.name = name
        self.bodyPart = bodyPart
        self.curatorID = curatorID
        self.imageURL = imageURL
        self.sets = []
    }
}
