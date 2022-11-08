//
//  FattherView.swift
//  swfitUILearning
//
//  Created by Ray on 2022/11/8.
//

import SwiftUI



struct FattherView: View {

    
    var body: some View {
        
        VStack {
            
            ChildrenView()
            
            Button {
                // get text value from children
            } label: {
                Text("get value")
                    .padding()
                    .background(Color(.systemBlue))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            }
            
            Text(GetTextValue().textValue)
        }
        
    }
}

struct FattherView_Previews: PreviewProvider {
    static var previews: some View {
        FattherView()
    }
}
