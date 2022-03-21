//
//  PieceView.swift
//  ChessByMatthew
//
//  Created by Matthew Popov on 21.03.2022.
//

import SwiftUI

struct PieceView: View {
    
    var piece: ChessPiece
    @State var piecePosition: CGPoint = CGPoint(x: 0, y: 0)
    
    
    var body: some View {
        
        if piece.side == .black {
            
            Image("\(self.piece.image)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width*0.1, height: UIScreen.main.bounds.width*0.1)
                .rotationEffect(.degrees(180))
                .position(self.piecePosition)
                .gesture(DragGesture().onChanged({ dragGestureValue in
                    self.piecePosition = dragGestureValue.location
                }))
            
        } else {
            Image("\(self.piece.image)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width*0.1, height: UIScreen.main.bounds.width*0.1)
                .position(self.piecePosition)
                .gesture(DragGesture().onChanged({ dragGestureValue in
                    self.piecePosition = dragGestureValue.location
                }))
        }
    }
}
