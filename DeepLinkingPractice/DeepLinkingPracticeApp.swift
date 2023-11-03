//
//  DeepLinkingPracticeApp.swift
//  DeepLinkingPractice
//
//  Created by Norbert Grover on 10/31/23.
//

import SwiftUI

@main
struct DeepLinkingPracticeApp: App {
    @State private var selectedTab: ContentView.Tab = .home
    @State private var deepLinkDestination: DeepLinkDestination?

    var body: some Scene {
        WindowGroup {
            ContentView(selectedTab: $selectedTab)
                .onOpenURL { url in
                    handleDeepLink(url: url)
            }
        }
    }
    
    private func handleDeepLink(url: URL) {
        guard let host = URLComponents(url: url, resolvingAgainstBaseURL: true)?.host else { return }
        switch host {
        case "profile":
            deepLinkDestination = .profile
            selectedTab = .profile
        case "home":
            deepLinkDestination = .home
            selectedTab = .home
        default:
            break
        }
    }
    
    enum DeepLinkDestination {
           case profile
           case home
       }
}
