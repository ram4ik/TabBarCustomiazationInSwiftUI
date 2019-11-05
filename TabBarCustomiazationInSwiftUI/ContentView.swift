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
            
        }
    }
}

extension UITabBarController {
    override open func viewDidLoad() {
        let standardAppearance = UITabBarAppearance()
        
        // standardAppearance.backgroundColor = .orange
        // or
        // standardAppearance.backgroundImage = UIImage(named: "img3")
        // or
        //standardAppearance.configureWithTransparentBackground()
        
        standardAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.red]
        standardAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.red]
        
        standardAppearance.inlineLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.green]
        standardAppearance.inlineLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.green]
        
        standardAppearance.compactInlineLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.blue]
        standardAppearance.compactInlineLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.blue]
        
        tabBar.standardAppearance = standardAppearance
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
