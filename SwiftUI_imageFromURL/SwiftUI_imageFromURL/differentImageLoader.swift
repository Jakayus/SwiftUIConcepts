//
//  differentImageLoader.swift
//  SwiftUI_imageFromURL
//
//  Created by Joel Sereno on 8/23/20.
//  Copyright © 2020 Joel Sereno. All rights reserved.
//

import Foundation
import SwiftUI
import Combine


class DifferentImageLoader: ObservableObject {
    
    var downloadedImage: UIImage?
    let didChange = PassthroughSubject<DifferentImageLoader?, Never>() //required
    

    func load(url: String) {
        
        //check image URL
        guard let imageURL = URL(string: url) else {
            fatalError("ImageURL is not correct!")
        }
        
        //create URL session to grab object from URL
        URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
            
            //check if received data
            guard let data = data, error == nil else {
                
                DispatchQueue.main.async {
                    self.didChange.send(nil) //notify subscribers; can use nil since object is optional
                }
                return
                
            }
            
            self.downloadedImage = UIImage(data: data)
            DispatchQueue.main.async {
                self.didChange.send(self)
            }
            
            
            
        }.resume()
        
        
    } //end func load
    
}
