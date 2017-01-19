//
//  Zombie.swift
//  MonsterTown
//
//  Created by Tyler on 11/15/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    var walkWithLimp = true
    private var isFallingApart = false
    
    override func terrorizeTown() {
        if !isFallingApart {
        town?.changePopulation(amount: -10)
        }
        super.terrorizeTown()
    }
    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walkWithLimp = walksWithLimp
    }
}
