//
//  SettingsView.swift
//  JrSwiftLab
//
//  Created by André Porto on 21/11/23.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com.br")!
    //    let youtubeURL = URL(string: "https://www.youtube.com/@AndrePorto")!
    let portfolioURL = URL(string: "https://andreporto.dev.br")!
    let linkedinURL = URL(string: "https://www.linkedin.com/in/andremporto/")!
    let githubURL = URL(string: "https://github.com/andremporto")!
    let instagramURL = URL(string: "https://www.instagram.com/andreporto.78")!
    let twitterURL = URL(string: "https://twitter.com/andremporto")!
    let arcticleURL = URL(string: "https://www.linkedin.com/build-relation/newsletter-follow?entityUrn=7111345452452605952")!
    
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    appSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    followMeSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline)
            .tint(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Informações")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    //                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    private var appSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image(.appIconLogo)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.bottom)
                Text("O aplicativo Jr. SwiftLab é simplesmente o aplicativo mais lindo de todo universo")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            //            Link("Mostre seu apoio pagando um café 🥰", destination: coffeeURL)
            
        } header: {
            Text("Jr. SwiftLab")
        }
    }
    
    private var andreInfoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image(.fotoperfil)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.bottom)
                Text("Olá, eu sou o André Porto. Desenvolvedor iOS com experiência em SwiftUI, Firebase, SwiftData, CoreData, API, Git, GitFlow, Clean Code.\n\nFormado em Design e Psicologia, possuo 20 anos de experiência em design gráfico, desenvolvimento front-end e design de interfaces do usuário além de experiência em Tipografia e UI/UX.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Portfólio", destination: portfolioURL)
            Link("LinkedIn", destination: linkedinURL)
            Link("GitHub", destination: githubURL)
            Link("Instagram", destination: instagramURL)
            Link("Twitter", destination: twitterURL)
            Link("Meus Artigos", destination: arcticleURL)
            //            Link("YouTube", destination: youtubeURL)
            
        } header: {
            Text("The Developer")
        }
    }
    
    private var followMeSection: some View {
        Section {
            HStack {
                Image(.portfolio)
                    .resizable()
                    .frame(width: 30, height: 30)
                Link("Portfólio", destination: portfolioURL)
            }
            HStack {
                Image(.linkedin)
                    .resizable()
                    .frame(width: 30, height: 30)
                Link("LinkedIn", destination: linkedinURL)
            }
            HStack {
                Image(.githubLink)
                    .resizable()
                    .frame(width: 30, height: 30)
                Link("GitHub", destination: githubURL)
            }
            HStack {
                Image(.instagram)
                    .resizable()
                    .frame(width: 30, height: 30)
                Link("Instagram", destination: instagramURL)
            }
            HStack {
                Image(.twitter)
                    .resizable()
                    .frame(width: 30, height: 30)
                Link("Twitter", destination: twitterURL)
            }
            HStack {
                Image(.article)
                    .resizable()
                    .frame(width: 30, height: 30)
                Link("Meus Artigos", destination: arcticleURL)
            }
            
        } header: {
            Text("Follow me")
        }
    }
    
    private var applicationSection: some View {
        Section {
            Link("Termos de Serviço", destination: defaultURL)
            Link("Politica de Privacidade", destination: defaultURL)
        } header: {
            Text("Regras de uso")
        }
    }
}
