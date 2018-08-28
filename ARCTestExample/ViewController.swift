//
//  ViewController.swift
//  ARCTestExample
//
//  Created by Sean Goldsborough on 8/28/18.
//  Copyright © 2018 Sean Goldsborough. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sean: Person?
    var matilda: MacBook?

    override func viewDidLoad() {
        super.viewDidLoad()
        createObjects()
        assignProperties()
    }
    
    func createObjects() {
        sean = Person(name: "Sean", macbook: nil)
        matilda = MacBook(name: "Matilda", owner: nil)
        
    }
    
    // Creates a retain cycle by having multiple strong references.
    // Need to make one var weak (i.e. Classes.swift,line 27).
    func assignProperties() {
        sean?.macbook = matilda
        matilda?.owner = sean
        
        sean = nil
    }

    
}

