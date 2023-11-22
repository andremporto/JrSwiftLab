//
//  FrameworkView.swift
//  JrSwiftLab
//
//  Created by jonata klabunde on 17/11/23.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = FrameworkViewModel()
    @State private var showInfoView: Bool = false // Sheet
    @State private var showInfo: Bool = false
    
    var body: some View {
        ZStack {
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
                                .font(.title)
                                .fontWeight(.bold)
                        }
                    }
                    ToolbarItem(placement: .bottomBar) {
                        CircleButtonView(iconName: "info")
                            .onTapGesture {
                                showInfoView.toggle()
                            }
                            .padding(.top)
                    }
                }
                .searchable(text: $viewModel.searchTerm, prompt: "Buscar")
            }
            .accentColor(Color(.label))
        }
        .sheet(isPresented: $showInfoView) {
            InfoView()
        }
    }
}


#Preview {
    HomeView()
}
