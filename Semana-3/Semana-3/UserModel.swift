//
//  UserModel.swift
//  asdafasf
//
//  Created by Student on 13/09/23.
//

import SwiftUI

struct UserModel: View {
    struct UserModel: Codable, Identifiable {
        let id: UUID
        let nome: String
        let vaga: String
    }
    @State private var user = [UserModel]()
    var body: some View {
        NavigationView {
            List(user, id: \.id) { user in
                VStack(alignment: .leading) {
                    Text(user.nome)
                }
            }.navigationTitle("User API").task {
                await fetchData()
            }
        }
        
    }
        func fetchData() async {
            guard let url = URL(string: "https://dog.ceo/api/breeds/image/random") else {
                print("url nao funfa")
                return
            }
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                
                if let decodedResponse = try? JSONDecoder().decode([UserModel].self, from: data) {
                    user = decodedResponse
                }
            }catch {
                print("data nao valida")
            }
        }
    }

struct UserModel_Previews: PreviewProvider {
    static var previews: some View {
        UserModel()
    }
}
