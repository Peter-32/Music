//
//  ContentView.swift
//  Music
//
//  Created by Peter Myers on 5/25/21.
//

import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        return path
                                                
    }
}

struct Square: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        
        
        return path
                                                
    }
}

struct Arc: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: startAngle, endAngle: endAngle, clockwise: clockwise)
        return path
                                                
    }
}


func buttonA() {
    
}
func buttonB() {
    
}
func buttonC() {
    
}
func buttonD() {
    
}
func buttonE() {
    
}
func buttonF() {
    
}
func buttonG() {
    
}
func buttonPlay() {
    
}
func buttonUndo() {
    
}
func buttonReset() {
    
}

struct ContentView: View {
    var body: some View {
        return VStack() {
            VStack {
                Arc(startAngle: .degrees(0), endAngle: .degrees(360), clockwise: true)
                    .stroke(Color(red: 76/255, green: 162/255, blue: 255/255))
//                    .fillColor(Color.blue)
//                .fill(Color(red: 76/255, green: 162/255, blue: 255/255))
                    .frame(width: 100, height: 100)
                    
            }
            Spacer()
            VStack {
                Line().stroke(Color.black, style: StrokeStyle(lineWidth: 3, lineCap:
                                                                .round, lineJoin: .round)).frame(width: UIScreen.screenWidth-32, height: 10)
                Line().stroke(Color.black, style: StrokeStyle(lineWidth: 3, lineCap:
                                                                .round, lineJoin: .round)).frame(width: UIScreen.screenWidth-32, height: 10)
                Line().stroke(Color.black, style: StrokeStyle(lineWidth: 3, lineCap:
                                                                .round, lineJoin: .round)).frame(width: UIScreen.screenWidth-32, height: 10)
                Line().stroke(Color.black, style: StrokeStyle(lineWidth: 3, lineCap:
                                                                .round, lineJoin: .round)).frame(width: UIScreen.screenWidth-32, height: 10)
                Line().stroke(Color.black, style: StrokeStyle(lineWidth: 3, lineCap:
                                                                .round, lineJoin: .round)).frame(width: UIScreen.screenWidth-32, height: 10)
            }
            Spacer()
            HStack {
                Button(action: buttonA) {
                    Square()
                        .fill(Color(red: 76/255, green: 162/255, blue: 255/255))
                        .frame(width: UIScreen.screenWidth/7, height: 50)
                }
                Button(action: buttonB) {
                    Square()
                        .fill(Color(red: 140/255, green: 81/255, blue: 165/255))
                        .frame(width: UIScreen.screenWidth/7, height: 50)
                }
                Button(action: buttonC) {
                    Square()
                        .fill(Color(red: 203/255, green: 94/255, blue: 152/255))
                        .frame(width: UIScreen.screenWidth/7, height: 50)
                }
                Button(action: buttonD) {
                    Square()
                        .fill(Color(red: 244/255, green: 123/255, blue: 138/255))
                        .frame(width: UIScreen.screenWidth/7, height: 50)
                }
            }
            
            HStack {
                Button(action: buttonE) {
                    Square()
                        .fill(Color(red: 255/255, green: 163/255, blue: 127/255))
                        .frame(width: UIScreen.screenWidth/7, height: 50)
                }
                Button(action: buttonF) {
                    Square()
                        .fill(Color(red: 255/255, green: 210/255, blue: 133/255))
                        .frame(width: UIScreen.screenWidth/7, height: 50)
                }
                Button(action: buttonG) {
                    Square()
                        .fill(Color(red: 255/255, green: 255/255, blue: 165/255))
                        .frame(width: UIScreen.screenWidth/7, height: 50)
                }
            }
            Spacer()
            HStack {
                Spacer()
                Button(action: buttonPlay) {
                    Text("Play")
                }
                Spacer()
                Button(action: buttonUndo) {
                    Text("Undo")
                }
                Spacer()
                Button(action: buttonReset) {
                    Text("Reset")
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
    }
}
