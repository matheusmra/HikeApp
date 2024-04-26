//
//  MotionAnimationView.swift
//  HikeApp
//
//  Created by Matheus Moreira on 26/04/24.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: PROPRIEDADES
    
    @State private var circAleatorio: Int = Int.random(in: 6...12)
    @State private var animacao: Bool = false
    // MARK: - FUNÇÕES
    
    // 1. COORDENADA ALEATÓRIA
    func cordAle() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
    // 2. TAMANHO ALEATÓRIO
    func tamAle() -> CGFloat {
        return CGFloat(Int.random(in: 4...80))
    }
    
    // 3. ESCALA ALEATÓRIA
    func escAle() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    // 4. VELOCIDADE ALEATÓRIA
    func velAle() -> Double {
        return Double.random(in: 0.05...1.0)
    }
    // 5. DELAY ALEATÓRIO
    func delAle() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            ForEach(0...circAleatorio, id: \.self) { item in
            Circle()
                .foregroundColor(.white)
                .opacity(0.25)
                .frame(width: tamAle())
                .position(
                    x: cordAle(),
                    y: cordAle()
                )
                .scaleEffect(animacao ? escAle() : 1)
                .onAppear(perform: {
                    withAnimation(
                        .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                        .repeatForever()
                        .speed(velAle())
                        .delay(delAle())
                    ){
                        animacao = true
                    }
                })
         }
        } //: FIM DO ZSTACK
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    MotionAnimationView()
        .background(
        Circle()
            .fill(.teal)
        )
}
