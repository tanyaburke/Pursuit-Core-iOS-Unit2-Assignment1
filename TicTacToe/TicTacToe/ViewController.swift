//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var gameButtons: [GameButton]!
   
    //outlets don't go below the override
    
    
  override func viewDidLoad() {
    super.viewDidLoad()//can add color here so it would come up when it loads
    // Do any additional setup after loading the view, typically from a nib.
  }
//Actions, method, initializer/ prperty
    @IBAction func gameButtonPressed(_ gameButton: GameButton) { //refactored by right clicking, refactor, rename or will have errors
        //array of array, keeping track of the buttons pressed
        print("row \(gameButton.row) at column \(gameButton.col) was selected")
    }
    
}

