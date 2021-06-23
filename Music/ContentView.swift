//
//  ContentView.swift
//  Music
//
//  Created by Peter Myers on 5/25/21.
//

import SwiftUI

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        return path
                                                
    }
}


struct ContentView: View {
    var body: some View {
        return VStack() {
            Line().stroke(Color.black, style: StrokeStyle(lineWidth: 3, lineCap:
                                                            .round, lineJoin: .round)).frame(width: 300, height: 10)
            Line().stroke(Color.black, style: StrokeStyle(lineWidth: 3, lineCap:
                                                            .round, lineJoin: .round)).frame(width: 300, height: 10)
            Line().stroke(Color.black, style: StrokeStyle(lineWidth: 3, lineCap:
                                                            .round, lineJoin: .round)).frame(width: 300, height: 10)
            Line().stroke(Color.black, style: StrokeStyle(lineWidth: 3, lineCap:
                                                            .round, lineJoin: .round)).frame(width: 300, height: 10)
            Line().stroke(Color.black, style: StrokeStyle(lineWidth: 3, lineCap:
                                                            .round, lineJoin: .round)).frame(width: 300, height: 10)
            
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
