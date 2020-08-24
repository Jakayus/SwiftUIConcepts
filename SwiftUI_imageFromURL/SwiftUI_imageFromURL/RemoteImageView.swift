//
//  RemoteImageView.swift
//  SwiftUI_imageFromURL
//
//  Created by Joel Sereno on 8/23/20.
//  Copyright © 2020 Joel Sereno. All rights reserved.
//

import SwiftUI

struct RemoteImageView: View {
    
    @ObservedObject var imageLoader = ImageLoader()
    
    var placeholder: Image
    
    
    init(url: String, placeholder: Image = Image(systemName: "photo")) {
        
        self.placeholder = placeholder
        imageLoader.fetchImage(url: url)
    }
    
    
    var body: some View {
        
        if let image = self.imageLoader.downloadImage {
            return Image(uiImage: image)
        }
        
        return placeholder
    }
}

struct RemoteImageView_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImageView(url: "")
    }
}
