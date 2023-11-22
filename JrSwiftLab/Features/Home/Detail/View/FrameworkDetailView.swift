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
                Label("Saiba mais", systemImage: "book.fill")
            }
//            .backgroundStyle(
//                LinearGradient(
//                    colors: [.red, .orange],
//                    startPoint: .top,
//                    endPoint: .bottom)
//            )
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .foregroundStyle(.white)
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
