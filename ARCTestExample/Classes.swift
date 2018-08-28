//
//  Classes.swift
//  ARCTestExample
//
//  Created by Sean Goldsborough on 8/28/18.
//  Copyright © 2018 Sean Goldsborough. All rights reserved.
//

import Foundation

class Person {
    let name: String
    var macbook: MacBook?
    
    init(name: String, macbook: MacBook?) {
        self.name = name
        self.macbook = macbook
    }
    
    deinit {
        print("name has been deinit-ed \(name)")
    }
}

class MacBook {
    let name: String
    weak var owner: Person?
    
    init(name: String, owner: Person?) {
        self.name = name
        self.owner = owner
    }
    
    deinit {
        print("MacBook named: \(name) has been deinit-ed")
    }
}
