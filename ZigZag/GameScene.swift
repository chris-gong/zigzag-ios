//
//  GameScene.swift
//  ZigZag
//
//  Created by Xu Wu on 5/25/18.
//  Copyright © 2018 Chris Gong. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    var background:SKNode!
    
    var player:SKNode!
    var scaleFactor:CGFloat!
    var gameStarted = false
    var movingLeft = false
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
    
    override init(size:CGSize){
        super.init(size: size)
        backgroundColor = SKColor.white
        
        scaleFactor = self.size.width/320
        background = createBackground()
        addChild(background)

        for i in 1...4{
            if(i % 2 == 1){
                let platformNode = addPlatform(position:CGPoint(x:self.size.width/3, y:CGFloat(i) * 100), left:true)
                background.addChild(platformNode)
            }
            else{
                let platformNode = addPlatform(position:CGPoint(x:self.size.width/3 * 2, y:CGFloat(i) * 100), left:false)
                background.addChild(platformNode)
            }
        }
        player = createPlayer()
        background.addChild(player)
    }
    override func didMove(to view: SKView) {
        physicsWorld.contactDelegate = self
    }
    func didBegin(_ contact: SKPhysicsContact) {
        NSLog("contact was made")
        var otherNode:SKNode!
        if contact.bodyA.node != player{
            otherNode = contact.bodyA.node
        }
        else{
            otherNode = contact.bodyB.node
        }
        (otherNode as! GenericNode).collideWithPlayer(player: player)
    }
    
    func touchDown(atPoint pos : CGPoint) {

    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if(!gameStarted){
            player.physicsBody?.isDynamic = true
            player.physicsBody?.affectedByGravity = false
            player.physicsBody?.velocity = CGVector(dx: 50, dy: 50)
            gameStarted = true
            movingLeft = true
        }
        else{
            if(movingLeft){
                player.physicsBody?.velocity = CGVector(dx: -50, dy: 50)
                movingLeft = false
            }
            else{
                player.physicsBody?.velocity = CGVector(dx: 50, dy: 50)
                movingLeft = true
            }
        }
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
