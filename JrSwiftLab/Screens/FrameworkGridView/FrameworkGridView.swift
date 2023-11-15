//
//  FrameworkGridView.swift
//  JrSwiftLab
//
//  Created by André Porto on 14/11/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                Section("Aprendizado basico") {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(
                            destination: FrameworkDetailView(framework: framework,
                                                             isShowDetailView: $viewModel.isShowingDetailView)) {
                                                                 FrameworkTitleView(framework: framework)
                                                             }
                    }
                }
                Section("Roadmap") {
                    ForEach(MockData.roadmap) { framework in
                        NavigationLink(
                            destination: FrameworkDetailView(framework: framework,
                                                             isShowDetailView: $viewModel.isShowingDetailView)) {
                                                                 FrameworkTitleView(framework: framework)
                                                             }
                    }
                }
                
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(
                        destination: FrameworkDetailView(framework: framework,
                                                         isShowDetailView: $viewModel.isShowingDetailView)) {
                                                             FrameworkTitleView(framework: framework)
                                                         }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "swift")
                            .foregroundStyle(Gradient(colors: [.orange, .red]))
                        Text("Jr. SwiftLab")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                }
            }
        }
        .accentColor(Color(.label))
    }
}


#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
