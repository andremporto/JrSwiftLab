//
//  SettingsView.swift
//  JrSwiftLab
//
//  Created by André Porto on 21/11/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("Hi")
            }
            .navigationTitle("Informações")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
//                    XmarkButton()
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}
