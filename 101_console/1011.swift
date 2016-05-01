//
//  1011.swift
//  101_console
//
//  Created by TIANJIN on 16/5/1.
//  Copyright © 2016 TIANJIN. All rights reserved.
//


func test2()  {
    let optionalString: String? = "Hello"
    let aBool = optionalString == nil
    print( "aBool = \(aBool)")
    
    let optionalName: String? = "John Appleseed"
    var greeting = "Hello!"
    
    if let name = optionalName {
        greeting = "Hello, \(name)"
    }
    
    print(greeting)
}
