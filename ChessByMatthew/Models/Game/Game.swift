//
//  Game.swift
//  ChessByMatthew
//
//  Created by Matthew Popov on 18.03.2022.
//

import Foundation


class Game {
    
    var gameOver: Bool = false
    var board: Board
    
    init(board: Board) {
        self.board = board
    }
    
    static func getPieces() -> [ChessPiece] {
        return [
            King(image: "", startPosition: "", side: Side.white)
            //Other pieces
        ]
    }
}
