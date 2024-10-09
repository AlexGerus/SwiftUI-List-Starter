//
//  VideoListView.swift
//  SwiftUI-List-Starter
//
//  Created by Alexander Gerus on 07.04.2023.
//

import SwiftUI

struct VideoListView: View {
    
    @StateObject private var viewModel = VideoListViewModel()
    var videos: [Video] = MockData.videos
    
    var body: some View {
        NavigationView {
            ZStack {
                List(videos, id: \.id) { video in
                    NavigationLink(destination: VideoDetailView(video: video), label: {
                        VideoCell(video: video)
                    })
                }
                .redacted(reason: viewModel.isLoading ? .placeholder : [])
                
                if viewModel.isLoading {
                    LoadingView()
                }
            }
            .navigationTitle("Alex's Top 10")
        }
        .onAppear { viewModel.startNetworkCall() }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
