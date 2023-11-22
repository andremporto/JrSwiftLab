//
//  Color.swift
//  JrSwiftLab
//
//  Created by André Porto on 22/11/23.
//

import Foundation
import SwiftUI


extension Color {
    
    static let theme = ColorTheme()
    static let launch = LaunchTheme()
    
}

struct ColorTheme {
    
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let info = Color("InfoColor")
    let secondaryText = Color("SecondaryTextColor")
}

struct LaunchTheme {
    
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
    
}
