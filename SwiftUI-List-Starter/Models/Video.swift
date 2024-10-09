//
//  Video.swift
//  SwiftUI-List-Starter
//
//  Created by Alexander Gerus on 07.04.2023.
//

import SwiftUI

struct Video: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let viewCount: Int
    let uploadDate: String
    let url: URL
}
