//
//  D3.swift
//  Aula1-Bor
//
//  Created by Student on 31/08/23.
//

import SwiftUI

struct D3: View {
    @State private var alerta = false
    @State private var nome: String = ""
    var body: some View {
        ZStack{
            Image("caminhao")
                .resizable()
                .scaledToFill()
                .opacity(0.10)
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 220)
                .opacity(0.8)
                .padding(.top, -20)
            
            Image("truck")
                .resizable()
                .scaledToFit()
                .frame(width: 220, height: 220)
                .padding(.bottom, -250)
            
            Button("Entrar") {
                alerta = true
            }
            .padding(.top, 600)
            .alert(isPresented: $alerta){
                Alert(title: Text("Alerta!"), message: Text("Que mira bobo"), dismissButton: .default(Text("La concha")))
            }
                Text("Bem-Vindo, \(nome)")
                    .font(.title)
                    .padding(.top, -320)
                    .multilineTextAlignment(.center)
            
                TextField("Insira seu nome", text: $nome)
                    .padding(.bottom, 500)
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 30)
        }
    }
}

struct D3_Previews: PreviewProvider {
    static var previews: some View {
        D3()
    }
}
