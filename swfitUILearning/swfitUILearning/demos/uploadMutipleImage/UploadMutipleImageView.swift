//
//  UploadMutipleImageView.swift
//  swfitUILearning
//
//  Created by Ray on 2022/11/29.
//

import SwiftUI

struct UploadMutipleImageView: View {
    
    @State var isPresented = false
    @State var inputImage: UIImage?
    @State var selectedImage: Image?
    
    var body: some View {
        if #available(iOS 16, *) {
            NavigationStack {
                VStack {
                    
                    // MARK: Upload mutiple images
                    Button {
                        self.isPresented = true
                    } label: {
                        Text("Upload Image")
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                            .background(Color(.systemBlue))
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                    }
                    .sheet(isPresented: $isPresented, onDismiss: loadImage) {
                        MutipleImagePicker(image: $inputImage)
                    }
                    
                    
                }
                .navigationTitle("UploadMutipleImage")
                .navigationBarTitleDisplayMode(.inline)
            }

        }
    }
    func loadImage() {
        guard let inputImage = inputImage else { return }
        self.selectedImage = Image(uiImage: inputImage)
    }
}

struct UploadMutipleImageView_Previews: PreviewProvider {
    static var previews: some View {
        UploadMutipleImageView()
    }
}
