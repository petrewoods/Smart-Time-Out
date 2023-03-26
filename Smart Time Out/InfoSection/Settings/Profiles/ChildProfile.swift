//
//  ChildProfile.swift
//  Smart Time Out
//
//  Created by Peter Woods on 22/03/2023.
//

import Foundation

struct ChildProfile: Identifiable, Codable, Equatable {
    let id: UUID
    let name: String
    let dateOfBirth: Date
    let photoFilename: String?
}
