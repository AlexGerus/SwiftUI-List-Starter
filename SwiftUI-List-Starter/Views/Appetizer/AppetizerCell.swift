//
//  AppetizerCell.swift
//  IntroToMVVMSwift
//
//  Created by Alexander Gerus on 24.04.2023.
//

import SwiftUI

struct AppetizerCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        CellView(cellData: Cell(
            name: appetizer.name,
            description: String(appetizer.price),
            imageString: appetizer.imageURL
        ))
    }
}

struct AppetizerCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerCell(appetizer: MockData.sampleAppetizer)
    }
}
