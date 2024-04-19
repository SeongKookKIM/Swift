//
//  FirstTabView.swift
//  LifecycleDemo
//
//  Created by SeongKook on 4/19/24.
//

import SwiftUI

struct FirstTabView: View {
    @State var title = "View One"
    var body: some View {
        Text(title)
            .onAppear(perform: {
                print("onAppear Triggered")
            })
            .onDisappear(perform: {
                print("onDisappear Triggered")
                title = "View One Again"
            })
            .task(priority: .background) {
                title = await changeTitle()
            }
    }
    
    func changeTitle() async -> String {
        sleep(5)
        return "Async task complete"
    }
}

#Preview {
    FirstTabView()
}
