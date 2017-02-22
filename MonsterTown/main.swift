//
//  main.swift
//  MonsterTown
//
//  Created by Tyler on 11/15/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

import Foundation

print("Hello, World!")

var myTown = Town(region: "West", population: 10000, stopLights: 6)
myTown.printTownDescription()
let ts = myTown.townSize
print(ts)

myTown.changePopulation(amount: 100000)
print("Size: \(myTown.townSize); population: \(myTown.population)")

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescription()
fredTheZombie.changeName(name: "Fred the Zombie", walksWithLimp: false)

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool)")
print(Zombie.spookyNoise)


