//
//  VideoCell.swift
//  SwiftUI-List-Starter
//
//  Created by Alexander Gerus on 28.06.2023.
//

import SwiftUI

struct VideoCell: View {
    
    var video: Video
    
    var body: some View {
        CellView(cellData: Cell(
            name: video.title,
            description: String(video.uploadDate),
            imageString: video.imageName
        ))
    }
}

struct VideoCell_Previews: PreviewProvider {
    static var previews: some View {
        VideoCell(video: MockData.sampleVideo)
    }
}
