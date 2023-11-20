//
//  SplashScreenView.swift
//  JrSwiftLab
//
//  Created by André Porto on 20/11/23.
//

import SwiftUI

struct SplashScreenView: View {
    
    @Binding var isPresented: Bool
    
    @State private var scale = CGSize(width: 0.8, height: 0.8)
    @State private var firstImageOpacity = 0.0
    @State private var imageOpacity = 1.0
    
    @State private var opacity = 1.0
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            ZStack {
                Image(.logo)
                    .resizable()
                    .scaledToFit()
                    .opacity(firstImageOpacity)
                    .frame(width: 100, height: 100)
                
                Image(.logo)
                    .resizable()
                    .scaledToFit()
                    .opacity(imageOpacity)
                    .frame(width: 100, height: 100)
                    .offset(x: 1)
            }
            .scaleEffect(scale)
        }
        .opacity(opacity)
        .onAppear {
            withAnimation(.easeInOut(duration: 1.5)) {
                scale = CGSize(width: 1, height: 1)
                firstImageOpacity = 1
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: {
                withAnimation(.easeOut(duration: 0.35)) {
                    scale = CGSize(width: 50, height: 50)
                    opacity = 0
                }
            })
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.9, execute: {
                withAnimation(.easeOut(duration: 0.2)) {
                    isPresented.toggle()
                }
            })
        }
    }
}

#Preview {
    SplashScreenView(isPresented: .constant(true))
}
