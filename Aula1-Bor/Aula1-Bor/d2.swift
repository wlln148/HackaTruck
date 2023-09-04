//
//  d2.swift
//  Aula1-Bor
//
//  Created by Student on 31/08/23.
//

import SwiftUI

struct d2: View {
    var body: some View {
        VStack{
            Image("caminhao")
                .resizable()
                .scaledToFit()
                .padding(.top, -150)
            
            
            Image("caminhao")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .padding()
                .overlay(Text("Hackatruck")
                    .padding(.bottom, 90)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.blue))
                .shadow(radius: 20)
            
            HStack{
                Rectangle()
                    .frame(width: 200, height: 190)
                    .padding(.bottom, -100)
                    .overlay(Text("Maker")
                        .foregroundColor(.yellow)
                        .position(x: 60, y: 100)
                        .font(.title))
                    .overlay(Text("Space")
                        .foregroundColor(.red)
                        .position(x: 140, y: 100)
                        .font(.title))
            }
            
        }
        
    }
    
    struct d2_Previews: PreviewProvider {
        static var previews: some View {
            d2()
        }
    }
}
