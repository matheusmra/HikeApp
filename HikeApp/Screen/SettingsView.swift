//
//  SettingsView.swift
//  HikeApp
//
//  Created by Matheus Moreira on 27/04/24.
//

import SwiftUI

struct SettingsView: View {
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
