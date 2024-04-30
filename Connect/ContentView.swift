//
//  ContentView.swift
//  Connect
//
//  Created by Adam Khalifa on 28.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            HStack{
                CircularProgressView()
                    .frame(width: 200.0, height: 200.0)
                CircularProgressView()
                    .frame(width: 200.0, height: 200.0)
            }
            CircularProgressView()
                .frame(width: 200.0, height: 200.0)
            HStack{
                CircularProgressView()
                    .frame(width: 200.0, height: 200.0)
                CircularProgressView()
                    .frame(width: 200.0, height: 200.0)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
