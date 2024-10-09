//
//  LoadingService.swift
//  SwiftUI-List-Starter
//
//  Created by Alexander Gerus on 28.06.2023.
//

import Foundation

final class VideoListViewModel: ObservableObject {

    @Published var isLoading = false
    
    func startNetworkCall() {
        self.isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.isLoading = false
        }
    }
}
