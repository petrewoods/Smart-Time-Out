//
//  ChildProfileDetailView.swift
//  Smart Time Out
//
//  Created by Peter Woods on 22/03/2023.
//

import SwiftUI

struct ChildProfileDetailView: View {
    let profile: ChildProfile
    @Binding var selectedProfile: ChildProfile?

    var body: some View {
        VStack {
            if let photoFilename = profile.photoFilename,
               let photo = UIImage(contentsOfFile: photoFilename) {
                Image(uiImage: photo)
                    .resizable()
                    .scaledToFit()
            } else {
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.gray)
            }

            Text(profile.name)
                .font(.title)
                .padding()

            Text("Age: \(calculateAge(from: profile.dateOfBirth))")
                .font(.headline)
                .padding()

            Button("Set as selected profile") {
                            selectedProfile = profile
                        }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                    }
                    .padding()
                    .navigationBarTitle("Profile", displayMode: .inline)
                }

                private func calculateAge(from dateOfBirth: Date) -> Int {
                    let calendar = Calendar.current
                    let ageComponents = calendar.dateComponents([.year], from: dateOfBirth, to: Date())
                    return ageComponents.year ?? 0
                }
            }
struct ChildProfileRow: View {
    let profile: ChildProfile
    @Binding var selectedProfile: ChildProfile?

    var body: some View {
        Button(action: {
            selectedProfile = profile
        }) {
            HStack {
                VStack(alignment: .leading) {
                    Text(profile.name)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .font(.custom("Nunito-Regular", size: 20))
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                        .padding(10)

                    Text("Age: \(calculateAge(from: profile.dateOfBirth))")
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .font(.custom("Nunito-Regular", size: 20))
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                        .padding(10)
                }

                Spacer()

                if let photoFilename = profile.photoFilename,
                   let photo = UIImage(contentsOfFile: photoFilename) {
                    Image(uiImage: photo)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 110)
                        .cornerRadius(20)
                        .padding([.top, .bottom, .trailing], 7.0)
                } else {
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 110)
                        .cornerRadius(20)
                        .foregroundColor(.gray)
                        .padding([.top, .bottom, .trailing], 7.0)
                }
            }
            .opacity(selectedProfile == profile ? 0.5 : 1.0)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(red: 0.863, green: 0.863, blue: 0.863, opacity: 1.0), lineWidth: 1)
            )
            .padding(.vertical, 5.0)
            .padding(.horizontal, 8.0)
        }
    }

    private func calculateAge(from dateOfBirth: Date) -> Int {
        let calendar = Calendar.current
        let ageComponents = calendar.dateComponents([.year], from: dateOfBirth, to: Date())
        return ageComponents.year ?? 0
    }
}
