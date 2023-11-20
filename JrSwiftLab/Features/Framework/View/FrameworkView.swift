//
//  FrameworkView.swift
//  JrSwiftLab
//
//  Created by jonata klabunde on 17/11/23.
//

import SwiftUI

struct FrameworkView: View {
    
    @ObservedObject var viewModel = FrameworkViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                /// section
                ForEach(viewModel.data) { section in
                    Section(section.name) {
                        /// framework row
                        ForEach(section.frameworks) { framework in
                            NavigationLink(destination: FrameworkDetailView(framework: framework, isShowDetailView: $viewModel.isShowingDetailView)) {
                                FrameworkTitleView(framework: framework)
                            }
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(.logo)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .padding(.bottom)
                        Text("Jr. SwiftLab")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                }
            }
            .searchable(text: $viewModel.searchTerm, prompt: "Buscar")
        }
        .accentColor(Color(.label))
    }
}


#Preview {
    FrameworkView()
        .preferredColorScheme(.dark)
}
