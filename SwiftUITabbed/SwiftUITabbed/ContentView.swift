//
//  ContentView.swift
//  SwiftUITabbed
//
//  Created by Joel Sereno on 6/30/20.
//  Copyright © 2020 Joel Sereno. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Properties
    
    //MARK: View
    var body: some View {
            TabView {
                Text("Sample Tab 1")
                    .tabItem{
                        Text("Text")
                        Image(systemName: "bubble.right.fill")
                    }
                Text ("Sample Tab 2")
                    .tabItem {
                        Text("Call")
                        Image(systemName: "phone.fill")
                    }
                
            }//end TabView
        
    } //end View
    
    
    //MARK: Functions
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
