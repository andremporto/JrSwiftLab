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
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(.logo)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                        Text("Jr. SwiftLab")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                }
                ToolbarItem(placement: .bottomBar) {
                    HStack {
                        CircleButtonView(iconName: "info")
                        Spacer()
                        CircleButtonView(iconName: "plus")
                    }
                    .padding(.top)
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
