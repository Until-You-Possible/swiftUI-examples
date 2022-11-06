//
//  StateView.swift
//  swfitUILearning
//
//  Created by Ray on 2022/11/6.
//

// NOTICE: refer to this doc. so important!
// https://www.hackingwithswift.com/books/ios-swiftui/why-state-only-works-with-structs

import SwiftUI

struct StateView: View {
    
    // @State var message =  9
    // let message: Int
    @State var user = User()
    
    var body: some View {
        // Text("Hi \(message)")
        VStack {
            Text("first name is \(user.firstName)")
            Text("last name is \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}

struct User {
    var firstName = "gang55"
    var lastName = "wang"
}



