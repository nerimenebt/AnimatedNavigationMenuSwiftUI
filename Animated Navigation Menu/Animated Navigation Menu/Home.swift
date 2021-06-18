//
//  Home.swift
//  Animated Navigation Menu
//
//  Created by Nerimene on 18/5/2021.
//

import SwiftUI

struct Home: View {
    @Binding var selectedTab: String
    
    init(selectedTab: Binding<String>) {
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        TabView (selection: $selectedTab) {
            HomePage()
                .tag("Home")
            History()
                .tag("History")
            Settings()
                .tag("Settings")
            Help()
                .tag("Help")
            Notifications()
                .tag("Notifications")
        }
    }
}

struct HomePage: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Image("pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 50, height: 400)
                    .cornerRadius(20)
                
                VStack(alignment: .leading, spacing: 5, content: {
                    Text("Mark Elliot Zuckerberg")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text("internet entrepreneur, philanthropist and co-founding Facebook...")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                })
            }.navigationTitle("Home")
        }
    }
}

struct Help: View {
    var body: some View {
        NavigationView {
            Text("Help")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Help")
        }
    }
}

struct Settings: View {
    var body: some View {
        NavigationView {
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Settings")
        }
    }
}

struct Notifications: View {
    var body: some View {
        NavigationView {
            Text("Notifications")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Notifications")
        }
    }
}

struct History: View {
    var body: some View {
        NavigationView {
            Text("History")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("History")
        }
    }
}
