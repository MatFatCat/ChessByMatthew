//
//  PiecesView.swift
//  ChessByMatthew
//
//  Created by Matthew Popov on 21.03.2022.
//

import SwiftUI

struct PiecesView: View {
    
    
    
    let columns = [
        GridItem(.fixed(UIScreen.main.bounds.width*0.0929)),
        GridItem(.fixed(UIScreen.main.bounds.width*0.0929)),
        GridItem(.fixed(UIScreen.main.bounds.width*0.0929)),
        GridItem(.fixed(UIScreen.main.bounds.width*0.0929)),
        GridItem(.fixed(UIScreen.main.bounds.width*0.0929)),
        GridItem(.fixed(UIScreen.main.bounds.width*0.0929)),
        GridItem(.fixed(UIScreen.main.bounds.width*0.0929)),
        GridItem(.fixed(UIScreen.main.bounds.width*0.0929))
    ]
    
    var whitePieces = Game.getPieces(side: .white)
    var blackPieces = Game.getPieces(side: .black)
    
    var body: some View {
        
        VStack {
            
            Spacer() //minLength: UIScreen.main.bounds.height*0.2
            
            
            LazyVGrid(columns: self.columns) {
                ForEach(self.blackPieces) { piece in
                    PieceView(piece: piece)
                }
            }
            
            
            Text("")
                .frame(width: UIScreen.main.bounds.height*0.27, height: UIScreen.main.bounds.height*0.27, alignment: .center)
                .hidden()
            
            
            LazyVGrid(columns: self.columns) {
                ForEach(self.whitePieces) { piece in
                    PieceView(piece: piece)
                }
            }
            
            Spacer() //minLength: UIScreen.main.bounds.height*0.2
        }
    }
}

struct PiecesView_Previews: PreviewProvider {
    static var previews: some View {
        PiecesView()
    }
}
