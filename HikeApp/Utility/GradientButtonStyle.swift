//
//  GradientButtonStyle.swift
//  HikeApp
//
//  Created by Matheus Moreira on 25/04/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Condições
                // Condição ? A : B
                configuration.isPressed ?
                // A: Quando o usuário apertar o botão
                LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
                :
                // B: Quando o botão não estiver sendo pressionado
                
                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
