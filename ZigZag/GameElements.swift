//
//  GameElements.swift
//  ZigZag
//
//  Created by Xu Wu on 5/25/18.
//  Copyright © 2018 Chris Gong. All rights reserved.
//

import Foundation
import SpriteKit

extension GameScene {
    func createBackground() -> SKNode{
        let background = SKNode()
        
        return background
    }
    
    func createPlayer() -> SKNode {
        let playerNode = SKNode()
        playerNode.position = CGPoint(x: self.size.width/3, y: 100)
        playerNode.xScale = 0.25
        playerNode.yScale = 0.25
        let sprite = SKSpriteNode(imageNamed:"ball")
        playerNode.addChild(sprite)
        
        playerNode.physicsBody = SKPhysicsBody(circleOfRadius: sprite.size.width/(2*4)) //4 is to account for scaling
        playerNode.physicsBody?.isDynamic = false
        playerNode.physicsBody?.allowsRotation = false
        playerNode.physicsBody?.restitution = 0
        playerNode.physicsBody?.friction = 0
        playerNode.physicsBody?.angularDamping = 0
        playerNode.physicsBody?.linearDamping = 0
        
        playerNode.physicsBody?.usesPreciseCollisionDetection = true
        playerNode.physicsBody?.categoryBitMask = CollisionBitMask.Player
        playerNode.physicsBody?.collisionBitMask = 0
        playerNode.physicsBody?.contactTestBitMask = CollisionBitMask.Platform
        return playerNode
    }
    
    func addPlatform(position: CGPoint, left: Bool) -> PlatformNode{
        let platformNode = PlatformNode()
        platformNode.position = position
        
        let rectSprite = SKSpriteNode(imageNamed: "rectangle")
        
        if(!left){
            platformNode.zRotation = CGFloat(Double.pi / 4 * 3)
        }
        else{
            platformNode.zRotation = CGFloat(Double.pi / 4)
        }
        platformNode.addChild(rectSprite)
        
        platformNode.physicsBody = SKPhysicsBody(rectangleOf:rectSprite.size)
        platformNode.physicsBody?.isDynamic = false
        
        platformNode.physicsBody?.categoryBitMask = CollisionBitMask.Platform
        platformNode.physicsBody?.collisionBitMask = 0
        
        return platformNode
    }
}
