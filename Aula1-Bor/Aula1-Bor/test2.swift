//
//  test2.swift
//  Aula1-Bor
//
//  Created by Student on 04/09/23.
//

import SwiftUI

struct test2: View {
    @State var texto: String = ""
    var body: some View {
        NavigationStack {
        VStack {
            
            Text("Nào sei como terminei: \(texto)")
            
            TextField("Digite seu nome: ", text: $texto)
                .padding()
                .multilineTextAlignment(.center)
            
            NavigationLink(destination: test4(texto: texto)) {
                Text("tela 4")
                }
            }
        }
    }
}

struct test2_Previews: PreviewProvider {
    static var previews: some View {
        test2()
    }
}

//view(@Nome: Nome)
