//
//  SettingsView.swift
//  HikeApp
//
//  Created by Matheus Moreira on 27/04/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPRIEDADES
    
    private let trocarIcone: [String] = [
        "AppIcon-Lupa",
        "AppIcon-Mapa",
        "AppIcon-Cogu",
        "AppIcon-Camera",
        "AppIcon-Mochila",
        "AppIcon-Fogueira"
    ]
    
    var body: some View {
        List {
          // MARK: - SEÇÃO: TOPO
            
            Section {
                HStack {
                    Spacer()
                    
                    
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10){
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Escolha do editor")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Onde você encontra \nas melhores trilhas?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("A trilha que parece incrível nas fotos é ainda melhor quando você está lá. \nDescubra o melhor dia para fazer trilhas no app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Tire a poeira dos tênis! É hora de caminhar")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
            } //: TOPO
            .listRowSeparator(.hidden)
            // MARK: - SEÇÃO: Ícones
            
            Section(header: Text("Ícones alternativos")) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(trocarIcone.indices, id: \.self) { item in
                            Button {
                                print("O Icone \(trocarIcone[item]) foi tocado")
                                
                                UIApplication.shared.setAlternateIconName(trocarIcone[item]) {
                                    error in
                                    if error != nil {
                                        print("Erro ao trocar ícone do app: \(String(describing: error?.localizedDescription))")
                                    } else {
                                        print("Ícone trocado com sucesso!")
                                    }
                                }
                                
                            } label: {
                                Image("\(trocarIcone[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                            }
                        .buttonStyle(.borderless)
                        }
                    }
                }
                .padding(.top, 12)
                Text("Selecione o seu ícone favorito.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
            }
            .listRowSeparator(.hidden)
            
            // MARK: - SECÃO: SOBRE
            
            Section(
                header: Text("Sobre o APP"),
                footer: HStack {
                 Spacer()
                    Text("Copyright © Todos os direitos reservados.")
                    Spacer()
                    
                }
                    .padding(.vertical, 8)
            ) {
                // 1. Linha
                CustomListRowView(rowLabel: "Compatibilidade", rowIcon: "info.circle", rowContent: "iOS", rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Versão", rowIcon: "gear", rowContent: "0.1", rowTintColor: .purple)
                
                CustomListRowView(rowLabel: "Linguagem", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Desenvolvedor", rowIcon: "ellipsis.curlybraces", rowContent: "Matheus", rowTintColor: .mint)
                
            } //: SEÇÃO
        } //: FIM DA LISTA
    }
}

#Preview {
    SettingsView()
}
