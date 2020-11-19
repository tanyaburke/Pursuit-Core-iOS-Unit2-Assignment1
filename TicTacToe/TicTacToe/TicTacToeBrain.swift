//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

//var turnCount = 0
@available(iOS 13.0, *)

class TicTacToeBrain {
    var turnCount = 0
    var pressedButtonMatrix = [["","",""],
                               ["","",""],
                               ["","",""]]
    var winner = ""
    var xcount = 0
    var ocount = 0
    var gameOver = false
    
    
    func resetButton() {
        winner = ""
        xcount = 0
        ocount = 0
        gameOver = false
    }
    
    func playerTurnStart(gameButton: GameButton) -> (String) {
        if turnCount % 2 == 0 {
            pressedButtonMatrix[gameButton.row][gameButton.col] = "X"
            gameButton.isEnabled = false
            turnCount += 1; gameButton.setBackgroundImage(UIImage(systemName:"xmark"), for: .normal)
            print(pressedButtonMatrix)
            
            //check winner here
            return "Player Two Turn"
            
        } else {
            
        pressedButtonMatrix[gameButton.row][gameButton.col] = "O"
            turnCount += 1
            gameButton.setBackgroundImage(UIImage(systemName:"circle"), for: .normal)
            
            gameButton.isEnabled = false
            if gameOver == false {
                
                gameButton.isEnabled = false
            }
            
            gameButton.imageView?.alpha = 1
            print(pressedButtonMatrix)
            //check winner
            return "Player One Turn"
        }
    }
    
    func disableButtons(gameButton: [GameButton]) {
        for button in gameButton {
            
            button.isEnabled = false
            
        }
    }

    func winnerX() -> String {
        
        for i in 1..<pressedButtonMatrix.count{
            for j in 0..<pressedButtonMatrix[i].count{
                if pressedButtonMatrix[i][j] == "X" {
                    xcount += 1
                }
                if xcount == 3 {
                    
                    winner = "Player One Won!!"
                    gameOver = true
                }
            }
            xcount = 0
        }
        return winner
    }
 
    func winnerO() -> String {
        //        var winner = "no winner"
        for i in 0..<pressedButtonMatrix.count {
            for j in 0..<pressedButtonMatrix[i].count {
                if pressedButtonMatrix[i][j] == "O" {
                    ocount += 1
                }
                if ocount == 3 {
                    winner = "Player Two Won!!"
                    gameOver = true
                }
            }
            ocount = 0
        }
        return winner
    }
    
    func winnerOcol() -> String {
        //        var winner = "no winner"
        for i in 0..<pressedButtonMatrix.count {
            for j in 0..<pressedButtonMatrix[i].count{
                if pressedButtonMatrix[j][i] == "O" {
                    ocount += 1
                }
                if ocount == 3 {
                    winner = "Player Two Won!!"
                    gameOver = true
                }
            }
            ocount = 0
        }
        return winner
    }
    
    
    func winnerXcol() -> String {
        //        var winner = "no winner"
        for i in 0..<pressedButtonMatrix.count {
            for j in 0..<pressedButtonMatrix[i].count{
                if pressedButtonMatrix[j][i] == "X" {
                    xcount += 1
                }
                 if xcount == 3 {
                    winner = "Player One Won!!"
                    gameOver = true
                }
            }
            xcount = 0
        }
        return winner
    }
    
//    func diagonalWinner() -> String {
//      for i in 0..<pressedButtonMatrix.count {
//        for j in 0..<pressedButtonMatrix[i].count{
//            if (pressedButtonMatrix[j] == pressedButtonMatrix[i]) {
//                
//            }else if pressedButtonMatrix[j] == pressedButtonMatrix[i] {
//    }
//    
//            }
//
//}
//}
}
