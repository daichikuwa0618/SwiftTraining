//
//  ContentView.swift
//  WeSplit
//
//  Created by Daichi Hayashi on 2020/02/01.
//  Copyright © 2020 Daichi Hayashi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
