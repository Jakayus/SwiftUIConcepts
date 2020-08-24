//
//  ImageLoader.swift
//  SwiftUI_imageFromURL
//
//  Created by Joel Sereno on 8/23/20.
//  Copyright © 2020 Joel Sereno. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ImageLoader: ObservableObject {
    
    @Published var downloadImage: UIImage?
    
    func fetchImage(url: String) {
        
        guard let imageURL = URL(string: url) else {
            fatalError("The url string is invalid")
        }
        
        URLSession.shared.dataTask(with: imageURL) { data, response, error in
            
            guard let data = data, error == nil else {
                fatalError("error reading the image")
            }
            
            DispatchQueue.main.async {
                self.downloadImage = UIImage(data: data)
            }
            
            
            
        }.resume()
    }
    
    
}
