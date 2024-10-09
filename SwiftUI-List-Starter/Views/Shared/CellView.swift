//
//  CellView.swift
//  SwiftUI-List-Starter
//
//  Created by Alexander Gerus on 28.06.2023.
//

import SwiftUI

struct CellView: View {
    
    let cellData: Cell

    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: cellData.imageString)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(cellData.name)
                    .fontWeight(.semibold)
                
                Text(cellData.description)
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
        .swipeActions(allowsFullSwipe: false) {
            Button(role: .destructive) {
                print("Delete")
            } label: {
                Label("Delete", systemImage: "trash.circle.fill")
            }
            
            Button {
                print("Favorite")
            } label: {
                Label("Favorite", systemImage: "star.circle.fill")
            }
            .tint(.green)
        }
        .swipeActions(edge: .leading, allowsFullSwipe: false) {
            Button {
                print("Pin")
            } label: {
                Label("Pin", systemImage: "pin.circle.fill")
            }
            .tint(.yellow)
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(cellData: MockData.sampleCell)
    }
}
