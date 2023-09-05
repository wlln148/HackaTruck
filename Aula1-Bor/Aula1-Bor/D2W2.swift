//
//  D2W2.swift
//  Aula1-Bor
//
//  Created by Student on 04/09/23.
//

import SwiftUI

struct D2W2: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: teste1()) {
                    Text("primeira tela")
                }
                NavigationLink(destination: test2()) {
                    Text("Segunda tela")
                }
                NavigationLink(destination: test3()) {
                    Text("terceira tela")
                }
            }
        }
    }
    
    struct D2W2_Previews: PreviewProvider {
        static var previews: some View {
            D2W2()
        }
    }
}
