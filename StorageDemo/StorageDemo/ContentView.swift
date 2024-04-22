

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                SceneStorageView()
                    .tabItem {
                        Image(systemName: "circle.fill")
                        Text("SceneStorage")
                    }
                AppStorageView()
                    .tabItem {
                        Image(systemName: "square.fill")
                        Text("AppStorage")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
