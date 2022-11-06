//
//  StateObjectView.swift
//  swfitUILearning
//
//  Created by Ray on 2022/11/6.
//

// refer doc: https://www.hackingwithswift.com/books/ios-swiftui/sharing-swiftui-state-with-stateobject

import SwiftUI

class UserInfo: ObservableObject {
    @Published var firstName = "alex"
    @Published var lastName = "zhang"
}

struct StateObjectView: View {
    
    @StateObject var user = UserInfo()
    
    var body: some View {
        VStack {
            Text("hi \(user.firstName)")
            Text("hi \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }

    }
}

struct StateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectView()
    }
}
