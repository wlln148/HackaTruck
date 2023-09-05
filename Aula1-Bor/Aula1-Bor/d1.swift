//
//  d1.swift
//  Aula1-Bor
//
//  Created by Student on 04/09/23.
//

import SwiftUI

struct d1: View {
    let contacts = [
            "John",
            "Alice",
            "Bob",
            "Foo",
            "Bar"
        ]
    
    var body: some View {
        List(contacts, id: \.self) { contact in
                    Text(contact)
        }
    }
}

struct d1_Previews: PreviewProvider {
    static var previews: some View {
        d1()
    }
}
