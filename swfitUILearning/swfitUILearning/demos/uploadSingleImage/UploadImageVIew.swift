//
//  UploadImageVIew.swift
//  swfitUILearning
//
//  Created by Ray on 2022/11/29.
//

import SwiftUI
import PhotosUI

@available(iOS 16.0, *)
struct UploadImageVIew: View {
    

    @State private var selectedItems  = [PhotosPickerItem]()
    @State private var selectedImages = [UIImage]()
    @State private var isPressented  = false
    
    var body: some View {
        VStack {
            PhotosPicker(selection: $selectedItems,
                          matching: .any(of: [.images, .not(.videos)]),
                          photoLibrary: .shared()) {
                Label("Pick Image", systemImage: "photo.artframe")
            }
            .frame(width: 200, height: 60)
            .font(.system(size: 28))
            .onChange(of: selectedItems) { newValues in
                Task {
                    selectedItems = []
                    for value in newValues {
                        if let imageData = try? await value.loadTransferable(type: Data.self),
                           let image = UIImage(data: imageData) {
                            selectedImages.append(image)
                        }
                    }

                }
            }
            HStack {
                ScrollView(.horizontal) {
                    HStack {
                        if selectedImages.count > 0 {
                            ForEach(selectedImages, id: \.self) { image in
                                Image(uiImage: image)
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                
                            }
                        }
                    }
                }
            }
        }
   }
        
}

struct UploadImageVIew_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 16.0, *) {
            UploadImageVIew()
        } else {
            // Fallback on earlier versions
        }
    }
}
