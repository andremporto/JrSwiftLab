//
//  ContainerView.swift
//  JrSwiftLab
//
//  Created by André Porto on 20/11/23.
//

import SwiftUI

struct ContainerView: View {
    
    @State private var isSplashScreenViewPresented = true
    
    var body: some View {
        if !isSplashScreenViewPresented {
            FrameworkView()
        } else {
            SplashScreenView(isPresented: $isSplashScreenViewPresented)
        }
    }
}

#Preview {
    ContainerView()
}
