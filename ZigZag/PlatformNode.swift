//
//  PlatformNode.swift
//  ZigZag
//
//  Created by Xu Wu on 5/25/18.
//  Copyright © 2018 Chris Gong. All rights reserved.
//

import Foundation
import SpriteKit

class PlatformNode: GenericNode{
    override func collideWithPlayer(player:SKNode) -> Bool{
        return true
    }
}
