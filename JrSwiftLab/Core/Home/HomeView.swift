//
//  FrameworkView.swift
//  JrSwiftLab
//
//  Created by jonata klabunde on 17/11/23.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = FrameworkViewModel()
    @State private var showInfo: Bool = false
    @State private var showPlus: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.data) { section in
                    Section(section.name) {
                        ForEach(section.frameworks) { framework in
                            NavigationLink(
                                destination: DetailView(
                                    framework: framework,
                                    isShowDetailView: $viewModel.isShowingDetailView)) {
                                        TitleView(framework: framework)
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
                            .frame(width: 32, height: 32)
                        Text("Jr. SwiftLab")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                }
                ToolbarItem(placement: .bottomBar) {
                    HStack {
                        CircleButtonView(iconName: "info")
                        Spacer()
                        CircleButtonView(iconName: "plus")
                            .onTapGesture {
                                withAnimation(.spring) {
                                    showPlus.toggle()
                                }
                            }
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
    HomeView()
}
