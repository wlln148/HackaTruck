//
//  ContentView.swift
//  Aula1-Bor
//
//  Created by Student on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            d1()
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            d3()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            d2()
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
    }
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
        }
    }
}
