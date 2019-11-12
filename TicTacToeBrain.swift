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
    var  xcount = 0
    var ycount = 0
    var continueGame = true
    
    func playerTurnStart(gameButton: GameButton) -> (String){
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
                if continueGame == false{
                
                gameButton.isEnabled = false
            }
        
            gameButton.imageView?.alpha = 1
            print(pressedButtonMatrix)
            //check winner
            return "Player One Turn"
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
                continueGame = false
                    
                }
            }
            xcount = 0
        }
        return winner
    }
    
    func winnerY() -> String {
//        var winner = "no winner"
        for i in 0..<pressedButtonMatrix.count {
            for j in 0..<pressedButtonMatrix[i].count{
                if pressedButtonMatrix[i][j] == "Y" {
                    ycount += 1
                }
                if ycount == 3 {
                    winner = "Player Two Won!!"
                    continueGame = false
                }
            }
            ycount = 0
        }
        return winner
    }
    
//    func winnerYcolumn() -> String {
//
//        for i in 0..<pressedButtonMatrix.count {
//
//            for j in pressedButtonMatrix[i] {
//                j = [0]
//                  i += 1
//                if pressedButtonMatrix[i][j] == "Y" {
//                    ycount += 1
//                }
//                if ycount == 3 {
//                    winner = "Player Two Won!!"
//                    break
//                }
//            }
//            ycount = 0
//        }
//        return winner
//    }
//
    






}

