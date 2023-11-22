//
//  Color.swift
//  JrSwiftLab
//
//  Created by André Porto on 22/11/23.
//

import Foundation


extension Color {
    
    static let theme = ColorTheme()
//    static let theme = ColorTheme2()
    static let launch = LaunchTheme()
    
}

// ADD COLORS TO THE THEME
struct ColorTheme {
    
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}

//struct ColorTheme2 {
//    let accent = Color("AccentColor")
//    let background = Color("BackgroundColor")
//    let green = Color("GreenColor")
//    let red = Color("RedColor")
//    let secondaryText = Color("SecondaryTextColor")
//}

struct LaunchTheme {
    
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
    
}
