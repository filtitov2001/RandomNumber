//
//  Number.swift
//  RandomNumber
//
//  Created by Felix Titov on 6/2/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

struct RandomNumber {
    var minValue: Int
    var maxValue: Int
    
    func getRandomNumber() -> Int {
        Int.random(in: minValue...maxValue)
    }
}
