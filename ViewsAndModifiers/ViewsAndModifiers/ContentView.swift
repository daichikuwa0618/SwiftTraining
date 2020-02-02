//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Daichi Hayashi on 2020/02/02.
//  Copyright © 2020 Daichi Hayashi. All rights reserved.
//

import SwiftUI

struct capsuleText: View {
    var text: String
    var color: Color
    
    var body: some View {
        Text(text)
        .padding()
        .background(Color.blue)
        .foregroundColor(color)
        .font(.largeTitle)
        .clipShape(Capsule())
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
        }
    }
}

struct ProminentTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0 ..< rows) { row in
                HStack {
                    ForEach(0 ..< self.columns) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }
    
    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
    func watermarked(with text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
    func prominented() -> some View {
        self.modifier(ProminentTitle())
    }
}

struct ContentView: View {
    var body: some View {
        VStack (spacing: 20) {
            capsuleText(text: "first", color: Color.white)
            capsuleText(text: "second", color: Color.yellow)
            Text("Hello world")
            .modifier(Title())
            Text("Hello Kosen").titleStyle()
            .modifier(Watermark(text: "daichi"))
            Color.blue
                .frame(width: 300, height: 100)
                .watermarked(with: "Hacing")
            Text("Yeah")
            .prominented()
            GridStack(rows: 4, columns: 4) { row, col in
                Image(systemName: "\(row * 4 + col).circle")
                Text("R\(row) C\(col)")
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
