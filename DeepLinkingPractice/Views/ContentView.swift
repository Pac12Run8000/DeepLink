//
//  ContentView.swift
//  DeepLinkingPractice
//
//  Created by Norbert Grover on 10/31/23.
//

import SwiftUI

struct ContentView: View {
    @Binding var selectedTab: Tab

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(Tab.home)

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .tag(Tab.profile)
        }
    }

    enum Tab {
        case home
        case profile
    }
}

