//
//  FrameworkViewModel.swift
//  JrSwiftLab
//
//  Created by jonata klabunde on 17/11/23.
//

import SwiftUI


final class FrameworkViewModel: ObservableObject {
        
    @Published var searchTerm = "" {
        didSet {
            /// sem pesquisa
            guard searchTerm.isEmpty == false else {
                data = MockFrameworks.sections
                return
            }
            /// com pesquisa            
            data = []
            MockFrameworks.sections.forEach { section in
                let result = section.frameworks.filter { $0.name.lowercased().contains(searchTerm.lowercased())}
                if result.isEmpty == false {
                    data.append(SectionData(name: section.name, frameworks: result))
                }
            }
        }
    }
    @Published var isShowingDetailView = false
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var data: [SectionData] = MockFrameworks.sections
    
    let colums: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}
