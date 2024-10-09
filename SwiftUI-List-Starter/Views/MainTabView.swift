//
//  VideoTabView.swift
//  SwiftUI-List-Starter
//
//  Created by Alexander Gerus on 28.06.2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            VideoListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }

            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }

            AppetizerListView()
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Appetizers")
                }
        }
    }
}

struct VideoTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
