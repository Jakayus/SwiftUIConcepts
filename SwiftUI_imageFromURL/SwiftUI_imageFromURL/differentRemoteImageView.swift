//
//  differentRemoteImageView.swift
//  SwiftUI_imageFromURL
//
//  Created by Joel Sereno on 8/23/20.
//  Copyright © 2020 Joel Sereno. All rights reserved.
//

import SwiftUI

struct differentRemoteImageView: View {
    
    @ObservedObject private var differentImageLoader = DifferentImageLoader()
    var placeholder: Image
    
    init(url: String, placeholder: Image = Image(systemName: "photo")) {
        self.placeholder = placeholder
        self.differentImageLoader.load(url: url)
    }
    
    var body: some View {
        if let uiImage = self.differentImageLoader.downloadedImage {
            return Image(uiImage: uiImage).resizable()
        } else {
            return placeholder
        }
    }
}

struct differentRemoteImageView_Previews: PreviewProvider {
    static var previews: some View {
        differentRemoteImageView(url: "https://images.unsplash.com/photo-1598186004076-e062b6555c53?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80")
    }
}
