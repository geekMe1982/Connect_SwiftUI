//
//  CircularProgressView.swift
//  Connect
//
//  Created by Adam Khalifa on 28.04.2024.
//

import SwiftUI

struct CircularProgressView: View {
    
    @State var progress: Double = 0
    
    var body: some View {
        VStack {
            ZStack {
                if progress < 1 {
                    Text("\(progress * 100, specifier: "%.0f")%")
                        .font(.largeTitle)
                        .bold()
                } else {
                    Text("Acheived!")
                        .bold()
                }
                Circle()
                    .stroke(Color.pink.opacity(0.5),
                            lineWidth: 30
                    )
                Circle()
                    .trim(from: 0.0, to: progress)
                    .stroke(
                        Color.pink,
                        style: StrokeStyle(lineWidth: 30, lineCap: .round)
                    )
                    .rotationEffect(.degrees(-90))
                    .animation(.easeOut, value: progress)
            }
            Spacer()
            Slider(value: $progress, in: 0...1)
            
        }
    }
}

#Preview {
    CircularProgressView()
}
