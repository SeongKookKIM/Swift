//
//  FirstTabView.swift
//  LifecycleDemo
//
//  Created by SeongKook on 4/19/24.
//

import SwiftUI

struct FirstTabView: View {
    var body: some View {
        Text("View One")
            .onAppear(perform: {
                print("onAppear Triggered")
            })
            .onDisappear(perform: {
                print("onDisappear Triggered")
            })
    }
}

#Preview {
    FirstTabView()
}
