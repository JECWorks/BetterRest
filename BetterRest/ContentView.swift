//
//  ContentView.swift
//  BetterRest
//
//  Created by Jason Cox on 9/5/24.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    
    @State private var sleepAmount = 8.0
    
    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
        
        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
            .labelsHidden()
    }
    
    func exampleDates() {
        let tomorrow = Date.now.addingTimeInterval(86400)
        let range = Date.now...tomorrow
    }
}

#Preview {
    ContentView()
}
