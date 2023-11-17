//
//  FrameworkView.swift
//  JrSwiftLab
//
//  Created by jonata klabunde on 17/11/23.
//


import SwiftUI

struct FrameworkView: View {
    
    @ObservedObject var viewModel = FrameworkViewModel()
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationStack {
            List {
                section("Roadmap", data: MockData.roadmap)
                section("Base inicial", data: MockData.basic)
                section("IDE", data: MockData.ide)
                section("Versionamento de código", data: MockData.versioning)
                section("Estudos", data: MockData.lessons)
                section("Bibliotecas", data: MockData.frameworks)
                section("Arquivos", data: MockData.files)
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
    
    @ViewBuilder
    func section(_ title: String, data: [Framework]) -> some View {
        Section(title) {
            ForEach(data) { framework in
                NavigationLink(destination: FrameworkDetailView(framework: framework, isShowDetailView: $viewModel.isShowingDetailView)) {
                    FrameworkTitleView(framework: framework)
                }
            }
        }
    }
}


#Preview {
    FrameworkView()
        .preferredColorScheme(.dark)
}
