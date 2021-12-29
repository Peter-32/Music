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

//class CircleView: UIView {
//    override func draw(rect: CGRect) {
//        let path = UIBezierPath()
//
//        let radius: Double = 100
//        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
//
//        path.move(to: CGPoint(x: center.x + CGFloat(radius, y: center.y)))
//
//        for i in stride(from: 0, to: 361.0, by: 10) {
//            let radians = i * Double.pi / 180
//
//            let x = Double(center.x) + radius * cos(radians)
//            let y = Double(center.y) + radius * sin(radians)
//
//            path.addLine(to: CGPoint(x: x, y: y))
//        }
//    }
//}

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




struct ContentView: View {
    @State var note_colors = [Color.white, Color.white, Color.white, Color.white]
    @State var next_note_index = 0
    @State var note_locations = [CGFloat(4), CGFloat(4), CGFloat(4), CGFloat(4)]
    
    func increment_note_id() {
        if (next_note_index == 3) {
            next_note_index = 0
        }
        else {
            next_note_index += 1
        }
    }
    
    func buttonA() {
        note_colors[next_note_index] = Color(red: 76/255, green: 162/255, blue: 255/255)
        note_locations[next_note_index] = CGFloat(4)
        increment_note_id()
        
    }
    func buttonB() {
        note_colors[next_note_index] = Color(red: 140/255, green: 81/255, blue: 165/255)
        note_locations[next_note_index] = CGFloat(-5)
        increment_note_id()
    }
    func buttonC() {
        note_colors[next_note_index] = Color(red: 203/255, green: 94/255, blue: 152/255)
        note_locations[next_note_index] = CGFloat(-14)
        increment_note_id()
    }
    func buttonD() {
        note_colors[next_note_index] = Color(red: 244/255, green: 123/255, blue: 138/255)
        note_locations[next_note_index] = CGFloat(-23)
        increment_note_id()
    }
    func buttonE() {
        note_colors[next_note_index] = Color(red: 255/255, green: 163/255, blue: 127/255)
        note_locations[next_note_index] = CGFloat(-32)
        increment_note_id()
    }
    func buttonF() {
        note_colors[next_note_index] = Color(red: 255/255, green: 210/255, blue: 133/255)
        note_locations[next_note_index] = CGFloat(-41)
        increment_note_id()
    }
    func buttonG() {
        note_colors[next_note_index] = Color(red: 255/255, green: 255/255, blue: 165/255)
        note_locations[next_note_index] = CGFloat(-50)
        increment_note_id()
    }
    func buttonPlay() {
        
    }
    func buttonUndo() {
        
    }
    func buttonReset() {
        
    }
    
    
    var body: some View {
        return VStack() {
            Spacer()
            ZStack {
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
                HStack {
                    Spacer() // 15 is 2 higher, -18 is start
                    Circle().fill(note_colors[0])
                        .frame(width: 15, height: 15).offset(x: 0, y: note_locations[0])
                    Spacer()
                    Circle().fill(note_colors[1])
                        .frame(width: 15, height: 15).offset(x: 0, y: note_locations[1])
                    Spacer()
                    Circle().fill(note_colors[3])
                        .frame(width: 15, height: 15).offset(x: 0, y: note_locations[2])
                    Spacer()
                    Circle().fill(note_colors[3])
                        .frame(width: 15, height: note_locations[0]).offset(x: 0, y: note_locations[3])
                    Spacer()
                    
                }
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
