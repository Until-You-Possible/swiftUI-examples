//
//  ChildrenView.swift
//  swfitUILearning
//
//  Created by Ray on 2022/11/8.
//

import SwiftUI

class GetTextValue: ObservableObject {
    
    @Published var textValue = "default value"
    
}


struct ChildrenView: View {
    
    @StateObject private var getTextValue = GetTextValue()
    
    // @State private var defaultValue = "this is default value"

    var body: some View {
        
        VStack {
            TextField("children", text: $getTextValue.textValue)
                .frame(width: 300, height: 100)
                .border(.purple, width: 4)
                .multilineTextAlignment(.leading)
                .background(.gray.opacity(0.4))
                .font(.system(size: 16))
                .accentColor(.red)
                .keyboardType(.decimalPad)
            
        }
        
    }
}

struct ChildrenView_Previews: PreviewProvider {
    static var previews: some View {
        ChildrenView()
    }
}
