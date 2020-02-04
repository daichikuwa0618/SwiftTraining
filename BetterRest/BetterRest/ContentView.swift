//
//  ContentView.swift
//  BetterRest
//
//  Created by Daichi Hayashi on 2020/02/03.
//  Copyright © 2020 Daichi Hayashi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date()
    
    var body: some View {
        DatePicker("Please enter the date", selection: $wakeUp, displayedComponents: .hourAndMinute)
        .labelsHidden()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
