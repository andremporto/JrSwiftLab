//
//  FrameworkDetailView.swift
//  JrSwiftLab
//
//  Created by André Porto on 14/11/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkTitleView(framework: framework)
            ScrollView {
                Text(framework.description)
                    .font(.body)
                    .padding(20)
            }
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
//                AFButton(title: "Aprenda mais")
                Label("Saiba mais", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .foregroundStyle(.white)
//            .buttonBorderShape(.capsule)
            .tint(.red)
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramwork, isShowDetailView: .constant(false))
        .preferredColorScheme(.dark)
}
