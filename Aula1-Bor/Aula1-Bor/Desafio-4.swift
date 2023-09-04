//
//  Desafio-4.swift
//  Aula1-Bor
//
//  Created by Student on 01/09/23.
//

import SwiftUI

struct Desafio_4: View {
    @State private var peso: String = ""
    @State private var altura: String = ""
    @State private var result: String = ""
    @State private var IMC: String = ""
    @State private var cor = Color.white
    var body: some View {
        
        ZStack {
            cor.ignoresSafeArea()
    VStack {
        Text("Calculadora de IMC")
            .font(.title)
            .multilineTextAlignment(.center)
            .padding(.bottom)
        
        Spacer()
        TextField("Insira seu peso: ", text: $peso)
            .multilineTextAlignment(.center)
            .keyboardType(.decimalPad)
            .frame(width: 350)
            .background(Color.white)
            .cornerRadius(10)
            .textContentType(.oneTimeCode)
            .padding(.top, -80)
        
        Spacer()
        TextField("Insira sua altura: ", text: $altura)
            .multilineTextAlignment(.center)
            .keyboardType(.decimalPad)
            .frame(width: 350)
            .background(Color.white)
            .cornerRadius(10)
            .textContentType(.oneTimeCode)
            .padding(.top, -130)
        Spacer()
        
        Button("Calcular") {
            let peso = Double(peso) ?? 0.0
            let altura = Double(altura) ?? 0.0
            
            let result = peso / (altura * altura)
            
            if (result < 18.5){
                IMC = "Baixo Peso"
                cor = Color("Baixo peso")
            }else if (result >= 18.5 && result <= 24.99){
                IMC = "Normal"
                cor = Color("Normal")
            }else if (result >= 25 && result <= 29.99){
                IMC = "Sobrepeso"
                cor = Color("Sobrepeso")
            }else if (result > 30){
                IMC = "Obeso"
                cor = Color("Obesisdade")
            }else{
                IMC = "Inválido"
            }
        }
        .padding(.top, -170)
        
        Spacer()
        Text(IMC)
            .multilineTextAlignment(.center)
            .padding(.top, -170)
            .font(.title)
        
        
        Image("tabela-IMC")
            .resizable()
            .scaledToFit()
            .frame(width: 450)
            .shadow(radius: 20)
            }
        }
    }
}
struct Desafio_4_Previews: PreviewProvider {
    static var previews: some View {
        Desafio_4()
    }
}
