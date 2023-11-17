//
//  FrameworkGridView.swift
//  JrSwiftLab
//
//  Created by André Porto on 14/11/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationStack {
            List {
                Section("Roadmap") {
                    ForEach(MockData.roadmap) { framework in
                        NavigationLink(
                            destination: FrameworkDetailView(framework: framework,
                                                             isShowDetailView: $viewModel.isShowingDetailView)) {
                                                                 FrameworkTitleView(framework: framework)
                                                             }
                    }
                }
                
                Section("Base inicial") {
                    ForEach(MockData.basic) { framework in
                        NavigationLink(
                            destination: FrameworkDetailView(framework: framework,
                                                             isShowDetailView: $viewModel.isShowingDetailView)) {
                                                                 FrameworkTitleView(framework: framework)
                                                             }
                    }
                }
                
                Section("IDE") {
                    ForEach(MockData.ide) { framework in
                        NavigationLink(
                            destination: FrameworkDetailView(framework: framework,
                                                             isShowDetailView: $viewModel.isShowingDetailView)) {
                                                                 FrameworkTitleView(framework: framework)
                                                             }
                    }
                }
                
                Section("Versionamento de código") {
                    ForEach(MockData.versioning) { framework in
                        NavigationLink(
                            destination: FrameworkDetailView(framework: framework,
                                                             isShowDetailView: $viewModel.isShowingDetailView)) {
                                                                 FrameworkTitleView(framework: framework)
                                                             }
                    }
                }
                
                Section("Estudos") {
                    ForEach(MockData.lessons) { framework in
                        NavigationLink(
                            destination: FrameworkDetailView(framework: framework,
                                                             isShowDetailView: $viewModel.isShowingDetailView)) {
                                                                 FrameworkTitleView(framework: framework)
                                                             }
                    }
                }
                
                Section("Bibliotecas") {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(
                            destination: FrameworkDetailView(framework: framework,
                                                             isShowDetailView: $viewModel.isShowingDetailView)) {
                                                                 FrameworkTitleView(framework: framework)
                                                             }
                    }
                }
                
                Section("Arquivos") {
                    ForEach(MockData.files) { framework in
                        NavigationLink(
                            destination: FrameworkDetailView(framework: framework,
                                                             isShowDetailView: $viewModel.isShowingDetailView)) {
                                                                 FrameworkTitleView(framework: framework)
                                                             }
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
            .searchable(text: $searchTerm, prompt: "Buscar")
        }
        .accentColor(Color(.label))
    }
}


#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
