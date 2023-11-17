//
//  FrameworkViewModel.swift
//  JrSwiftLab
//
//  Created by jonata klabunde on 17/11/23.
//

import SwiftUI

final class FrameworkViewModel: ObservableObject {
    
    @Published var isShowingDetailView = false
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    let colums: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}
