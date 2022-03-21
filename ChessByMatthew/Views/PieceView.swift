//
//  PieceView.swift
//  ChessByMatthew
//
//  Created by Matthew Popov on 21.03.2022.
//

import SwiftUI

struct PieceView: View {
    
    var piece: ChessPiece
    
    var body: some View {
        Image("\(self.piece.image)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 30, height: 30)
    }
}
