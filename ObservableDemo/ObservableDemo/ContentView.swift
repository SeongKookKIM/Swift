//
//  ContentView.swift
//  ObservableDemo
//
//  Created by SeongKook on 4/19/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var timerData: TimerData = TimerData()
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Timer Count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: resetCount) {
                    Text("ResetCounter")
                }
                
                NavigationLink(destination: 
                    SecondView()) {
                    Text("Next Screen")
                }
                .padding()
            }
        }
        .environmentObject(timerData)
    }
    
    func resetCount() {
        timerData.resetCount()
    }
}

#Preview {
    ContentView()
}
