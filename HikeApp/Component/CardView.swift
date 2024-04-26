//
//  CardView.swift
//  HikeApp
//
//  Created by Matheus Moreira on 24/04/24.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPRIEDAS
    
    @State private var nImagem: Int = 1
    @State private var nAleatorio: Int = 1
    
    // MARK: - FUNCÕES
    
    func randomImage() {
        repeat {
            nAleatorio = Int.random(in: 1...5)
        } while nAleatorio == nImagem
        nImagem = nAleatorio
    }
    
    
    var body: some View {
        // MARK: - CARD
        
        ZStack {
            CustomBackgroundView()
            
            VStack {
                // MARK: - TOPO
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: 
                                    [.customGrayLight,
                                    .customGrayMedium],
                                startPoint: .top,
                                endPoint: .bottom)
                        )
                        
                        Spacer()
                        
                        Button {
                          // AÇÃO: Mostra um alerta
                          print("O botão foi apertado.")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    
                    Text("Atividade divertida e adorável para amigos e família.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } //: HEADER
                .padding(.horizontal, 30)
                
                // MARK: - CONTEUDO PRINCIPAL
                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(nImagem)")
                    .resizable()
                    .scaledToFit()
                    .animation(.default, value: nImagem)
                }
                
                // MARK: - FOOTER
                
                Button {
                 // AÇÃO: Gera um numero aleatório
                print("Botão apertado")
                randomImage()
                } label: {
                    Text("EXPLORAR")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                .customGreenLight,
                                .customGreenMedium], 
                                startPoint: .top,
                                endPoint: .bottom
                                )
                            )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
            }   //: VSTACK
        } //: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
