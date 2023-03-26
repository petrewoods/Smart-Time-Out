//
//  ChildProfileEditView.swift
//  Smart Time Out
//
//  Created by Peter Woods on 22/03/2023.
//
// ChildProfileEditView.swift
import SwiftUI



struct ChildProfileEditView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var name: String = ""
    @State private var dateOfBirth = Date()
    @State private var photo: UIImage?
    
    let isAdding: Bool
    let onDone: (ChildProfile) -> Void
    let onCancel: () -> Void
    
    var body: some View {
        VStack {
            Form {
                TextField("Name", text: $name)
                
                DatePicker("Date of Birth", selection: $dateOfBirth, displayedComponents: .date)
                
                if let photo = photo {
                    Image(uiImage: photo)
                        .resizable()
                        .scaledToFit()
                } else {
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.gray)
                }
                
                Button("Choose Photo") {
                    // Implement photo picker
                }
            }
            
            HStack {
                Button("Cancel") {
                    onCancel()
                    presentationMode.wrappedValue.dismiss()
                }
                .padding()
                
                Spacer()
                
                Button("Done") {
                    let profile = ChildProfile(id: UUID(), name: name, dateOfBirth: dateOfBirth, photoFilename: saveImage(photo))
                    onDone(profile)
                    presentationMode.wrappedValue.dismiss()
                }
                .padding()
                .disabled(name.isEmpty)
            }
        }
        .navigationTitle(isAdding ? "Add Profile" : "Edit Profile")
    }
    
    private func saveImage(_ image: UIImage?) -> String? {
        guard let image = image,
              let data = image.jpegData(compressionQuality: 0.8) else { return nil }
        
        let filename = UUID().uuidString + ".jpg"
        let fileURL = getDocumentsDirectory().appendingPathComponent(filename)
        
        do {
            try data.write(to: fileURL)
            return filename
        } catch {
            print("Error saving image: \(error.localizedDescription)")
            return nil
        }
    }
    
    
    private func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}


