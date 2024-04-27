//
//  CustomListRowView.swift
//  HikeApp
//
//  Created by Matheus Moreira on 27/04/24.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - PROPRIEDADES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String
    @State var rowTintColor: Color
    
    var body: some View {
        LabeledContent {
            // Conteudo
            Text(rowContent)
                .foregroundColor(.primary)
                .fontWeight(.heavy)
        } label: {
           //Label
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List() {
        CustomListRowView(
            rowLabel: "Designer",
            rowIcon: "paintpalette",
            rowContent: "John Doe",
            rowTintColor: .pink
        )
    }
}
