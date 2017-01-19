//
//  Town.swift
//  MonsterTown
//
//  Created by Tyler on 11/15/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

import Foundation

struct Town {
    let region = "South"
    var population = 5422 {
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation).")
        }
    }
    var numberOfStoplight = 4
    
    enum Size {
        case Small
        case Medium
        case Large
    }
    
    var townSize: Size {
        get {
            switch self.population {
                case 0...10000:
                    return Size.Small
            case 100001...100000:
                return Size.Medium
            default:
                return Size.Large
            }
        }
    }
    
    func printTwonDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplight)")
    }
    
    mutating func changePopulation(amount: Int) {
        population += amount
    }
}

