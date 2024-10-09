//
//  MockData.swift
//  SwiftUI-List-Starter
//
//  Created by Alexander Gerus on 28.06.2023.
//

import Foundation

struct MockData {
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let sampleAppetizer = Appetizer(id: 0000002,
                                           name: "Blackened Shrimp",
                                           price: 6.99,
                                           imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg",
                                           description: "Seasoned shrimp from the depths of the Atlantic Ocean.",
                                           calories: 450,
                                           carbs: 3,
                                           protein: 4)
    
    static let videos = [
        Video(imageName: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg",
              title: "9 Things I wish I knew When I Started Programming",
              description: "In this video I discuss 9 things I wish I knew before I started programming. Knowing these things would have made my journey in becoming a full-time iOS developer so much faster and easier. I hope this advice helps someone out there that's early in their career as a software developer.",
              viewCount: 370222,
              uploadDate: "February 17, 2019",
              url: URL(string: "https://youtu.be/EgpKu1tAVMY")!),
        
        Video(imageName: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg",
              title: "9 Things I wish I knew When I Started Programming",
              description: "Blabla",
              viewCount: 370222,
              uploadDate: "February 17, 2019",
              url: URL(string: "https://youtu.be/EgpKu1tAVMY")!),
        
        Video(imageName: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg",
              title: "9 Things I wish I knew When I Started Programming",
              description: "Blabla",
              viewCount: 370222,
              uploadDate: "February 17, 2019",
              url: URL(string: "https://youtu.be/EgpKu1tAVMY")!),
        
        Video(imageName: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg",
              title: "9 Things I wish I knew When I Started Programming",
              description: "Blabla",
              viewCount: 370222,
              uploadDate: "February 17, 2019",
              url: URL(string: "https://youtu.be/EgpKu1tAVMY")!),
        
        Video(imageName: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg",
              title: "9 Things I wish I knew When I Started Programming",
              description: "Blabla",
              viewCount: 370222,
              uploadDate: "February 17, 2019",
              url: URL(string: "https://youtu.be/EgpKu1tAVMY")!),
        
        Video(imageName: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg",
              title: "9 Things I wish I knew When I Started Programming",
              description: "Blabla",
              viewCount: 370222,
              uploadDate: "February 17, 2019",
              url: URL(string: "https://youtu.be/EgpKu1tAVMY")!),
        
        Video(imageName: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg",
              title: "9 Things I wish I knew When I Started Programming",
              description: "Blabla",
              viewCount: 370222,
              uploadDate: "February 17, 2019",
              url: URL(string: "https://youtu.be/EgpKu1tAVMY")!),
        
        Video(imageName: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg",
              title: "9 Things I wish I knew When I Started Programming",
              description: "Blabla",
              viewCount: 370222,
              uploadDate: "February 17, 2019",
              url: URL(string: "https://youtu.be/EgpKu1tAVMY")!),
        
        Video(imageName: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg",
              title: "9 Things I wish I knew When I Started Programming",
              description: "Blabla",
              viewCount: 370222,
              uploadDate: "February 17, 2019",
              url: URL(string: "https://youtu.be/EgpKu1tAVMY")!),
        
        Video(imageName: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg",
              title: "9 Things I wish I knew When I Started Programming",
              description: "Blabla",
              viewCount: 370222,
              uploadDate: "February 17, 2019",
              url: URL(string: "https://youtu.be/EgpKu1tAVMY")!)
    ]
    
    static let sampleVideo = Video(imageName: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg",
                                   title: "9 Things I wish I knew When I Started Programming",
                                   description: "In this video I discuss 9 things I wish I knew before I started programming. Knowing these things would have made my journey in becoming a full-time iOS developer so much faster and easier. I hope this advice helps someone out there that's early in their career as a software developer.",
                                   viewCount: 370222,
                                   uploadDate: "February 17, 2019",
                                   url: URL(string: "https://youtu.be/EgpKu1tAVMY")!)
    
    static let sampleCell = Cell(name: "9 Things I wish I knew When I Started Programming",
                                   description: "In this video I discuss 9 things I wish I knew before I started programming. Knowing these things would have made my journey in becoming a full-time iOS developer so much faster and easier. I hope this advice helps someone out there that's early in their career as a software developer.",
                                   imageString: "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg")
}
