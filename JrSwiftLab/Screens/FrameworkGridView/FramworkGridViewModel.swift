//
//  FramworkGridViewModel.swift
//  JrSwiftLab
//
//  Created by André Porto on 14/11/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    
    let colums: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
}
