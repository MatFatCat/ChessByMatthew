//
//  ChessPiece.swift
//  ChessByMatthew
//
//  Created by Matthew Popov on 18.03.2022.
//

import Foundation


class ChessPiece {
    
    var image: String
    var startPosition: String
    var side: Side
    
    init(image: String, startPosition: String, side: Side) {
        self.image = image
        self.startPosition = startPosition
        self.side = side
    }

}


enum Side: String {
    
    case black = "black"
    case white = "white"
}
