//
//  WebView.swift
//  SwiftUITabbed
//
//  Created by Joel Sereno on 6/30/20.
//  Copyright © 2020 Joel Sereno. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: URL(string: "https://google.com")!)
        uiView.load(request)
    }
    
}



struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}



