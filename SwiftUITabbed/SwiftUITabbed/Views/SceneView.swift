//
//  SceneView.swift
//  SwiftUITabbed
//
//  Created by Joel Sereno on 6/30/20.
//  Copyright © 2020 Joel Sereno. All rights reserved.
//

import SwiftUI
import SpriteKit
import GameplayKit  //not 100% sure if this is needed

struct SceneView : UIViewRepresentable {
    
    func makeUIView(context: Context) -> SKView {
        let view = SKView(frame: .zero)
    
        if let scene = SKScene(fileNamed: "GameScene") {
            scene.scaleMode = .aspectFill
            view.presentScene(scene)
        }
        
        view.showsFPS       = true
        view.showsNodeCount = true
        
        return view
    
    }
    
    
    
    func updateUIView(_ uiView: SKView, context: Context) {

    }
 
    
}

