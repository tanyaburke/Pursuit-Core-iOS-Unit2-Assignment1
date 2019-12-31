//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit
@available(iOS 13.0, *)

class ViewController: UIViewController {
    @IBOutlet var gameButtons: [GameButton]!
    @IBOutlet weak var playerTurn: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    var gameStart = TicTacToeBrain()
    
    
    
    //outlets don't go below the override
//    var turnCount = 0
//    var buttonPressedArray = [GameButton]
  override func viewDidLoad() {
    super.viewDidLoad()//can add color here so it would come up when it loads
    // Do any additional setup after loading the view, typically from a nib.
  }
    
    
    
//Actions, method, initializer/ prperty
    @IBAction func gameButtonPressed(_ gameButton: GameButton) { //refactored by right clicking, refactor,
        
        
        
        print("row \(gameButton.row) at column \(gameButton.col) was selected")
        playerTurn.text = gameStart.playerTurnStart(gameButton: gameButton)
        
        winnerLabel.text =  "\(gameStart.winnerX())"
        
        winnerLabel.text = "\(gameStart.winnerO())"
        winnerLabel.text = "\(gameStart.winnerOcol())"
        winnerLabel.text = "\(gameStart.winnerXcol())"

        
        
        
        
}
//    @IBAction func reset(_ sender: UIButton) {
//        
//       gameStart.playerTurnStart(gameButton: <#T##GameButton#>)
//    }
    
}
