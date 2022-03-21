//
//  ChessPiece.swift
//  ChessByMatthew
//
//  Created by Matthew Popov on 18.03.2022.
//

import Foundation


class ChessPiece: Identifiable {
    
    var image: String
    var side: Side
    
    init(image: String, side: Side) {
        self.image = image
        self.side = side
    }

}


enum Side: String {
    case black = "black"
    case white = "white"
}
