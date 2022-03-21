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
    
    static func getPieces(side: Side) -> [ChessPiece] {
        
        let isSideWhite: Bool = side == .white
        
        if isSideWhite == true {
            return [
                
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
                
                Rook(image: isSideWhite == true ? "w-rook" : "b-rook", side: side),
                
                Knight(image: isSideWhite == true ? "w-knight" : "b-knight", side: side),
                
                Bishop(image: isSideWhite == true ? "w-bishop" : "b-bishop", side: side),
                
                Queen(image: isSideWhite == true ? "w-queen" : "b-queen", side: side),
                
                King(image: isSideWhite == true ? "w-king" : "b-king", side: side),
                
                Bishop(image: isSideWhite == true ? "w-bishop" : "b-bishop", side: side),
                
                Knight(image: isSideWhite == true ? "w-knight" : "b-knight", side: side),
                
                Rook(image: isSideWhite == true ? "w-rook" : "b-rook", side: side)
                
            ]
        } else {
            
            return [
                
                Rook(image: isSideWhite == true ? "w-rook" : "b-rook", side: side),
                
                Knight(image: isSideWhite == true ? "w-knight" : "b-knight", side: side),
                
                Bishop(image: isSideWhite == true ? "w-bishop" : "b-bishop", side: side),
                
                Queen(image: isSideWhite == true ? "w-queen" : "b-queen", side: side),
                
                King(image: isSideWhite == true ? "w-king" : "b-king", side: side),
                
                Bishop(image: isSideWhite == true ? "w-bishop" : "b-bishop", side: side),
                
                Knight(image: isSideWhite == true ? "w-knight" : "b-knight", side: side),
                
                Rook(image: isSideWhite == true ? "w-rook" : "b-rook", side: side),
                
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
                Pawn(image: isSideWhite == true ? "w-pawn" : "b-pawn", side: side),
            ]
        }
        
    }
}
