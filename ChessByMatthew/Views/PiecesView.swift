//
//  PiecesView.swift
//  ChessByMatthew
//
//  Created by Matthew Popov on 21.03.2022.
//

import SwiftUI

struct PiecesView: View {
    
    let columns = [
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50))
    ]
    
    var whitePieces = Game.getPieces(side: .white)
    var blackPieces = Game.getPieces(side: .black)
    
    var body: some View {
        
        LazyVGrid(columns: self.columns) {
            ForEach(self.whitePieces) { piece in
                PieceView(piece: piece)
            }
        }
        
        Text("Hello, World!")
    }
}

struct PiecesView_Previews: PreviewProvider {
    static var previews: some View {
        PiecesView()
    }
}
