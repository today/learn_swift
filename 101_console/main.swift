//
//  main.swift
//  101_console
//
//  Created by TIANJIN on 16/5/1.
//  Copyright © 2016 TIANJIN. All rights reserved.
//

import Foundation


var numbers = [20, 19, 7, 12]

var aNum = numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

print( aNum )