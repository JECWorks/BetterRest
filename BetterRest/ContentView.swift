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
        Text(Date.now, format: .dateTime.day().month().year())
        Text(Date.now.formatted(date: .long, time: .shortened))
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
        
        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
            .labelsHidden()
    }
    
    func exampleDates() {
//        let now = Date.now
//        let tomorrow = Date.now.addingTimeInterval(86400)
//        let range = Date.now...tomorrow
//        var components = DateComponents()
//        components.hour = 8
//        components.minute = 0
//        let date = Calendar.current.date(from: components) ?? .now
        let components = Calendar.current.dateComponents([.hour, .minute], from: .now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
}

#Preview {
    ContentView()
}
