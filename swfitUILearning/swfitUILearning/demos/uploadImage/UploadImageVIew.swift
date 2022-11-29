//
//  UploadImageVIew.swift
//  swfitUILearning
//
//  Created by Ray on 2022/11/29.
//

import SwiftUI

struct UploadImageVIew: View {
    
    @State var isPressented = false
    @State private var inputImage: UIImage?
    @State var profileImage: Image?
    
    var body: some View {
        VStack {
            Button {
                // some action
                self.isPressented = true
            } label: {
                Text("upload image")
                    .padding()
            }
            .frame(width: 200, height: 60)
            .background(.gray)
            .font(.system(size: 28))
            .foregroundColor(.black)
            .sheet(isPresented: $isPressented, onDismiss: loadImage) {
                ImagePicker(image: $inputImage)
            }
            HStack {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                } else {
                    Text("image location")
                }
            }
        }
   }

    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        self.profileImage = Image(uiImage: inputImage)
    }
        
}

struct UploadImageVIew_Previews: PreviewProvider {
    static var previews: some View {
        UploadImageVIew()
    }
}
