//
//  ProfileStore.swift
//  Smart Time Out
//
//  Created by Peter Woods on 22/03/2023.
//

import Foundation
class ProfileStore: ObservableObject {
    @Published var profiles: [ChildProfile]
    @Published var selectedProfile: ChildProfile?

    private let profilesKey = "childProfiles"

    init() {
        if let data = UserDefaults.standard.data(forKey: profilesKey),
           let decodedProfiles = try? JSONDecoder().decode([ChildProfile].self, from: data) {
            profiles = decodedProfiles
        } else {
            profiles = []
        }
        selectedProfile = profiles.first
    }

    func save() {
        if let data = try? JSONEncoder().encode(profiles) {
            UserDefaults.standard.set(data, forKey: profilesKey)
        }
    }
}
