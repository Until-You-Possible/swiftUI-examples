//
//  ImageLoadLocalImage.swift
//  swfitUILearning
//
//  Created by Ray on 2022/11/28.
//

import SwiftUI

struct ImageLoadLocalImage: View {
    
    
    @State var username = "arthur"
    @State var password = "123456"
    var body: some View {
        Text("Text")
        Form {
            TextField(text: $username, prompt: Text("Required")) {
                Text("Username")
            }
            SecureField(text: $password, prompt: Text("Required")) {
                Text("Password")
            }
        }
    }
}

struct ImageLoadLocalImage_Previews: PreviewProvider {
    static var previews: some View {
        ImageLoadLocalImage()
    }
}
