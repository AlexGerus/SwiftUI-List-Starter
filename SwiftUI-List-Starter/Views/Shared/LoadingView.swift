//
//  LoadingView.swift
//  SwiftUI-List-Starter
//
//  Created by Alexander Gerus on 28.06.2023.
//

import SwiftUI

struct LoadingView: View {
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
                .opacity(0.8)
            
            ProgressView()
                .tint(.red)
                .scaleEffect(3)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
