//
//  d2.swift
//  Aula1-Bor
//
//  Created by Student on 04/09/23.
//

import SwiftUI

struct d2: View {
    
    private var images = [
        "hare.fill",
        "tortoise.fill",
        "tortoise.fill",
        "pawprint.fill",
        "ant.fill",
        "ladybug.fill"
    ]
    var body: some View {
        NavigationStack {
            
            ScrollView(showsIndicators: false) {
                ForEach(images, id: \.self) {
                    index in Image(systemName: "\(index)")
                        .font(.system(size: 150))
                        .padding()
                }
            }
        }
    }
    
    struct d2_Previews: PreviewProvider {
        static var previews: some View {
            d2()
        }
    }
}
