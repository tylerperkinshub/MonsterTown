//
//  Zombie.swift
//  MonsterTown
//
//  Created by Tyler on 11/15/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walkWithLimp = true
    
    override func terrorizeTown() {
        if (town?.population)! >= 10 {
            town?.population = 0
        } else {
        town?.changePopulation(amount: -10)
        super.terrorizeTown()
        }
    }
    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walkWithLimp = walksWithLimp
    }
}
