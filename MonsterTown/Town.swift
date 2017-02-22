//
//  Town.swift
//  MonsterTown
//
//  Created by Tyler on 11/15/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

import Foundation

struct Town {
    let region: String
    var population: Int {
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation).")
        }
    }
    var numberOfStoplight: Int
    init(region: String, population: Int, stopLights: Int) {
        self.region = region
        self.population = population
        numberOfStoplight = stopLights
    }
    
    init(population: Int, stoplights: Int) {
        self.init(population: population, stoplights: stoplights)
    }
    
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
    
    func printTownDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplight); region: \(region)")
    }
    
    mutating func changePopulation(amount: Int) {
        population += amount
    }
}

