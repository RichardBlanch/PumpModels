//
//  WorkoutSet.swift
//  Models
//
//  Created by Richard Blanchard on 6/26/18.
//  Copyright © 2018 Richard Blanchard. All rights reserved.
//

import Foundation

public struct WorkoutSet: Codable {
    public var id: UUID?
    public var name: String
    public var description: String
    public var bodyPart: String
    public var superSetIdentification: UUID?
}
