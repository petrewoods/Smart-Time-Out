//
//  ChildProfilesView.swift
//  Smart Time Out
//
//  Created by Peter Woods on 22/03/2023.
//

import SwiftUI

struct ChildProfilesView: View {
    @EnvironmentObject var profileStore: ProfileStore
    @State private var isAddingProfile = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(profileStore.profiles) { profile in
                        NavigationLink(
                            destination: ChildProfileDetailView(profile: profile, selectedProfile: $profileStore.selectedProfile),
                            label: {
                                ChildProfileRow(profile: profile, selectedProfile: $profileStore.selectedProfile)
                                    .padding(.horizontal)
                            }
                        )
                    }
                }
                .padding(.vertical)
            }
            
            .navigationTitle("Child Profiles")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { isAddingProfile = true }) {
                        Image(systemName: "plus")
                    }
                    
                }
                
            }
            .navigationBarItems(
                leading: NavigationLink(
                    destination: ContentView().navigationBarHidden(false).navigationBarBackButtonHidden(true),
                    label: {
                        Image("BackButton")
                    }
                )
            )
            .sheet(isPresented: $isAddingProfile) {
                NavigationView {
                    ChildProfileEditView(isAdding: true) { profile in
                        profileStore.profiles.append(profile)
                        profileStore.save()
                        isAddingProfile = false
                    } onCancel: {
                        isAddingProfile = false
                    }
                }
            }
        }
    }
    
    private func deleteProfile(at offsets: IndexSet) {
        for index in offsets {
            let profile = profileStore.profiles[index]
            if profile == profileStore.selectedProfile {
                profileStore.selectedProfile = nil
            }
        }
        profileStore.profiles.remove(atOffsets: offsets)
        profileStore.save()
    }
    
    
}
