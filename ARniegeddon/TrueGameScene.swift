//
//  TrueGameScene.swift
//  ARniegeddon
//
//  Created by Eric Chang on 5/30/18.
//  Copyright © 2018 Ray Wenderlich. All rights reserved.
//

import ARKit

class TrueGameScene: SKScene {
  
  var sceneView: ARSKView {
    return view as! ARSKView
  }
  var isWorldSetUp = false

  private func setUpWorld() {
    guard let currentFrame = sceneView.session.currentFrame
      else { return }
    
    isWorldSetUp = true
  }
  
  override func update(_ currentTime: TimeInterval) {
    if !isWorldSetUp {
      setUpWorld()
    }
  }
}
