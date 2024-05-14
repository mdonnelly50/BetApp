//
//  MainView.swift
//  MikeAppFinal
//
//  Created by xcode15 on 5/10/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            StoryView()
                .tabItem {
                    Label("Story", systemImage: "square.and.pencil")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "list.dash")
                }
        }
    }
}

#Preview {
    LoginView()
       // .preferredColorScheme(.dark)
}

