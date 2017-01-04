//
//  Town.swift
//  MonsterTown
//
//  Created by Tyler on 11/15/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

import Foundation

struct Town {
    var population = 5422
    var numberOfStoplight = 4
    
    func printTwonDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplight)")
    }
    
    mutating func changePopulation(amount: Int) {
        population += amount
    }
}

