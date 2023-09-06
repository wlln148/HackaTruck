//
//  Spotify.swift
//  Aula1-Bor
//
//  Created by Student on 05/09/23.
//

import SwiftUI

struct Spotify: View {
    
    struct musica: Identifiable {
        var id: UUID
        var nome: String
        var artista: String
        var capa: String
    }
    //var arrayMsc = [
    //    musica(id: <#UUID#>, nome: "Pieces", artista: "Avaion", capa: "500x500")
    //]
    var body: some View {
        ZStack {
    //LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .bottom)
      //  .edgesIgnoringSafeArea(.vertical)
        }
        
        NavigationStack {
            ScrollView(showsIndicators: false){
                HStack {
                    
                   Image("500x500")
                        .resizable()
                        .scaledToFit()
                    
                  
                }
            }
        }
    }
}

struct Spotify_Previews: PreviewProvider {
    static var previews: some View {
        Spotify()
    }
}
