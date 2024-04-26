//
//  CustomCircleView.swift
//  HikeApp
//
//  Created by Matheus Moreira on 25/04/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    var body: some View {
        ZStack {
         Circle()
            .fill(
        LinearGradient(
            colors: [
                .customIndigoMedium,
                .customSalmonLight
             ],
            startPoint: isAnimateGradient ? .topLeading :
                    .bottomLeading,
            endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
        )
        )
        .onAppear {
            withAnimation(.linear(duration: 3.0).repeatForever(autoreverses:true)) {
                isAnimateGradient.toggle()
            }
        }
            
        MotionAnimationView()
    } //: FIM ZSTACK
    .frame(width: 256, height: 256)
  }
}
#Preview {
    CustomCircleView()
}
