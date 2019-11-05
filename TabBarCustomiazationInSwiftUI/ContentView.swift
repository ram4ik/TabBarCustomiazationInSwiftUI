//
//  ContentView.swift
//  TabBarCustomiazationInSwiftUI
//
//  Created by ramil on 05.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            Text("First View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "doc")
                            .font(.title)
                        Text("First")
                            .font(.title)
                    }
                }
                .tag(0)
            
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "paperclip")
                            .font(.title)
                        Text("Second")
                            .font(.title)
                    }
                }
                .tag(1)
            
        }.onAppear {
            UITabBar.appearance().backgroundColor = .orange
            UITabBar.appearance().tintColor = .purple
        }.accentColor(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
