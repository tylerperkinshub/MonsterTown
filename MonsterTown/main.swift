//
//  main.swift
//  MonsterTown
//
//  Created by Tyler on 11/15/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

import Foundation

print("Hello, World!")

var myTown = Town()
myTown.changePopulation(amount: 500)
print("Population: \(myTown.population), number of stoplights: \(myTown.numberOfStoplight).")

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTwonDescription()
fredTheZombie.changeName(name: "Fred the Zombie", walksWithLimp: false)


