//
//  GameView.swift
//  ChessByMatthew
//
//  Created by Matthew Popov on 18.03.2022.
//

import SwiftUI

struct GameView: View {
    

    
    var body: some View {
        ZStack {
            
            Image("board")
                .resizable()
                .frame(width: UIScreen.main.bounds.width - 10, height: UIScreen.main.bounds.width - 10, alignment: .center)
            
            
                PiecesView()
            
        }
    }
}
        
struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
