//
//  GameScene.swift
//  IntroToSpriteKit
//
//  Created by Russell Gordon on 2019-12-07.
//  Copyright © 2019 Russell Gordon. All rights reserved.
//

import SpriteKit
import GameplayKit
import AVFoundation

class GameScene: SKScene {
    
    // Background music player
    var backgroundMusic: AVAudioPlayer?
    
    // This function runs once to set up the scene
    override func didMove(to view: SKView) {
        
        // Set the background colour
        self.backgroundColor = .black
        
        //Add a circle
        let ball = SKShapeNode(circleOfRadius: 20)
        ball.position = CGPoint(x: 100, y: 200)
        ball.physicsBody = SKPhysicsBody(circleOfRadius: 20)
        addChild(ball)
        
        //Add a rectangle, this will represent the object that is being analyzed in this kinematics simulation
        let object = SKShapeNode(rect: CGRect(x: 200, y: 200, width: 40, height: 40))
        object.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 40, height: 40))
        object.position = CGPoint(x: 200, y: 200)
        addChild(object)
        
        //Make the edge of the scene be a boundary
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: self.frame)

    }
    
    // This runs before each frame is rendered
    // Avoid putting computationally intense code in this function to maintain high performance
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
}
