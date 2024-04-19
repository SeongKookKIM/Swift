//
//  SecondTabView.swift
//  LifecycleDemo
//
//  Created by SeongKook on 4/19/24.
//

import SwiftUI

struct SecondTabView: View {
    
    @State private var text: String = ""

    var body: some View {
        TextEditor(text: $text)
            .padding()
            .onChange(of: text) { oldValue, newValue in
                print("onChange triggered \(newValue) : \(oldValue)")
            }
    }
}

#Preview {
    SecondTabView()
}
