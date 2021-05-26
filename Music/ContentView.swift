//
//  ContentView.swift
//  Music
//
//  Created by Peter Myers on 5/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return VStack {
            
            Path() { path in
                path.move(to: CGPoint(x: 20, y: 20))
                path.addLine(to: CGPoint(x: 370, y: 20))
                path.addLine(to: CGPoint(x: 370, y: 21))
                path.addLine(to: CGPoint(x: 20, y: 21))
            }
            .fill(Color.black)
                        
            Path() { path in
                path.move(to: CGPoint(x: 20, y: 25))
                path.addLine(to: CGPoint(x: 370, y: 25))
                path.addLine(to: CGPoint(x: 370, y: 26))
                path.addLine(to: CGPoint(x: 20, y: 27))
            }
            .fill(Color.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
