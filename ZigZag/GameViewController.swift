//
//  GameViewController.swift
//  ZigZag
//
//  Created by Xu Wu on 5/25/18.
//  Copyright © 2018 Chris Gong. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let skView = self.view as! SKView
        
        let scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .aspectFit
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.showsPhysics = true
        skView.presentScene(scene)
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
