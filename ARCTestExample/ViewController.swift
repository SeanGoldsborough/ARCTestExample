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
    }
    
    func createObjects() {
        sean = Person(name: "Sean", macbook: nil)
        matilda = MacBook(name: "Matilda", owner: nil)
        
        sean = nil
        matilda = nil
    }

    
}

