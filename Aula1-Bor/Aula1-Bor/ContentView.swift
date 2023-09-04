//
//  ContentView.swift
//  Aula1-Bor
//
//  Created by Student on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
                Image("caminhao")
                .resizable()
                .scaledToFit()
                .padding()
            Text("HackaTruck")
                .foregroundColor(.blue)
                .font(.title)
            HStack {
                Text("Maker")
                    .foregroundColor(.yellow)
                Text("Space")
                    .foregroundColor(.red)
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
