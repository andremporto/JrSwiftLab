//
//  AFButton.swift
//  JrSwiftLab
//
//  Created by André Porto on 14/11/23.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 200, height: 50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    AFButton(title: "Test title")
}
