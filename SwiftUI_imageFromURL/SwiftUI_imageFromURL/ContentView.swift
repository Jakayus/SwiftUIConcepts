//
//  ContentView.swift
//  SwiftUI_imageFromURL
//
//  Created by Joel Sereno on 8/23/20.
//  Copyright © 2020 Joel Sereno. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let imageUrl = "https://images.unsplash.com/photo-1598186004076-e062b6555c53?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80"
    
    
    
    var body: some View {
        //RemoteImageView(url: imageUrl)
        differentRemoteImageView(url: imageUrl)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
