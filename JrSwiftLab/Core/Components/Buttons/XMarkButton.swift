//
//  XMarkButton.swift
//  JrSwiftLab
//
//  Created by André Porto on 21/11/23.
//

import SwiftUI

struct XMarkButton: View {
    
//    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }
    }
}

#Preview {
    XMarkButton()
}
