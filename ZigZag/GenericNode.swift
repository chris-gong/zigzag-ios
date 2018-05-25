//
//  GenericNode.swift
//  ZigZag
//
//  Created by Xu Wu on 5/25/18.
//  Copyright © 2018 Chris Gong. All rights reserved.
//

import Foundation
import SpriteKit

struct CollisionBitMask {
    static let Player:UInt32 = 0x01
    static let Platform:UInt32 = 0x02
}

class GenericNode: SKNode{
    func collideWithPlayer(player:SKNode) -> Bool{
        return false
    }
}
