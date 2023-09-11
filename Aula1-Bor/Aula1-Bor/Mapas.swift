//
//  Mapas.swift
//  Aula1-Bor
//
//  Created by Student on 06/09/23.
//

import SwiftUI
import MapKit

struct Mapas: View {
        
    @State private var anotacao: Bool = false
    @State private var Regiao = MKCoordinateRegion(center:
    CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253),
    span: MKCoordinateSpan(latitudeDelta: 01, longitudeDelta: 01))
    @State private var sheet = false
    
struct Local: Identifiable {
        let id = UUID()
        let nome: String
        let coordenada: CLLocationCoordinate2D
        let flag: String
        let description: String
    }
    
var locations = [
    Local(nome: "Brasil", coordenada: CLLocationCoordinate2D(latitude: -15.793889, longitude: -47.882778), flag: "", description: "bafbufbsubfdufbusbf"),
    Local(nome: "Inglaterra", coordenada: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141), flag: "", description: "abscuasbusabfausbu"),
    Local(nome: "Japão", coordenada: CLLocationCoordinate2D(latitude: 35.6894, longitude: 139.692), flag: "", description: "abscuasbusabfausbu"),
    Local(nome: "Coréia do Sul", coordenada: CLLocationCoordinate2D(latitude: 37.5657, longitude: 126.978), flag: "", description: "abscuasbusabfausbu")
    ]
    
    var body: some View {
        VStack {
            Text("World Map")
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
            
            VStack {
                Map(coordinateRegion: $Regiao, annotationItems: locations){ i in
                    MapAnnotation(coordinate: i.coordenada) {
                    Image(systemName: "info.circle.fill")
                            .font(.system(size: 35))
                        .frame(width: 400)
                        .onTapGesture {
                            sheet.toggle()
                        }
                                Text("\(i.nome)")
                                    .font(.title)
                                    .padding()
                                Image("\(i.flag)")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .padding()
                                Text(i.description)
                                    .font(.title)
                                    .padding()
                            }
                        }
                    }
                    
    ScrollView(.horizontal){
                        HStack(spacing: 10){
                            ForEach(locations) { Local in
                                Button(Local.nome) {
                                    Regiao.center = Local.coordenada
                                    
                                } // Fim Button
                                .foregroundColor(Color.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .font(.title2)
                                .buttonStyle(.borderedProminent)
                                .controlSize(.mini)
                                
                            }// fim foreach

                        } // fim Scrollview

                    } // fim HStack
                        
                }//fim vstack
            
            } //Fim vstack
        
        }//fim Vstack

struct Mapas_Previews: PreviewProvider {
    static var previews: some View {
        Mapas()
    }
}
