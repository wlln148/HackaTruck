//
//  test4.swift
//  Aula1-Bor
//
//  Created by Student on 04/09/23.
//

import SwiftUI

struct test4: View {
    var texto: String
    var body: some View {
        
        Text("Ataque dos palhaços lókos \(texto)" )
    }
}

struct test4_Previews: PreviewProvider {
    static var previews: some View {
        test4(texto: "")
    }
}
