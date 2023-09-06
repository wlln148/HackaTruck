//
//  Spotify.swift
//  Aula1-Bor
//
//  Created by Student on 05/09/23.
//

import SwiftUI

struct Spotify: View {
    struct song: Identifiable {
        let id = UUID()
        let nome: String
        let artista: String
        let capa: String
    }
    let Songs: [song] = [
        song(nome: "Pieces", artista: "Avaion", capa: "avaion"),
        song(nome: "Lonely", artista: "VisionV", capa: "avaion"),
        song(nome: "Lonely", artista: "VisionV", capa: "avaion"),
        song(nome: "Lonely", artista: "VisionV", capa: "avaion")
    ]
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.vertical)
                    .background(Color.blue)
                    .background(Color.green)
                VStack {
                    ScrollView(.vertical) {
                        ForEach(Songs) { song in
                            HStack {
                                Image(song.capa)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .position(x: 60, y: 400)
                        
                    
                                VStack(alignment: .leading) {
                                    Text(song.nome)
                                        .position(x: -50, y: 390)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color.white)
                                    Text(song.artista)
                                        .position(x: -50,y: 380)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color.white)
                                }//Fim VStack
                            }//fim VStack
                        }//Fim HStack
                    }//Fim ForEach
                }//Fim ScrollView
            }//Fim ZStack
        }//Fim NavigationStack
    }
}

struct Spotify_Previews: PreviewProvider {
    static var previews: some View {
        Spotify()
    }
}
