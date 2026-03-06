//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//
import SwiftUI

struct WelcomeView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 22) {
                    
                    // IMAGE PRINCIPALE
                    Image("TajMahal")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 410)
                        .clipped()
                        .cornerRadius(14)
                        .padding(.horizontal, 14)
                        .padding(.top, 10)
                    
                    // TITRE + LOGO À DROITE
                    HStack(alignment: .center) {
                        
                        VStack(alignment: .leading, spacing: 4) {
                            
                            Text("Restaurant Indien")
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                            Text("Taj Mahal")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.black)
                        }
                        Spacer()
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                            .foregroundColor(.gray)
                            .shadow(radius: 1)
                    }
                    .padding(.horizontal, 18)
                    // INFORMATIONS (gérées par LineView)
                    VStack(spacing: 18) {
                        LineView(systemIcon: "clock",
                                 leftText: "Mardi",
                                 rightText: "11h30 - 14h30 • 18h30 - 22h00")
                        

                        LineView(systemIcon: "bag",
                                 leftText: "Type de Service",
                                 rightText: "À emporter")

                        LineView(systemIcon: "mappin.and.ellipse",
                                 leftText: "12 Avenue de la Brique - 75010 Paris",
                                 rightText: "")

                        LineView(systemIcon: "globe",
                                 leftText: "www.tajmahal.fr",
                                 rightText: "")

                        LineView(systemIcon: "phone",
                                 leftText: "06 12 34 56 78",
                                 rightText: "")
                    }
                    .padding(.horizontal, 18)
                    
                    // BOUTON ACCÉDER AU MENU
                    NavigationLink(destination: MenuView()) {
                        Text("Accéder au menu")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 55)
                            .background(Color(red: 0.85, green: 0.15, blue: 0.15))
                            .cornerRadius(12)
                            .padding(.horizontal, 18)
                            .padding(.bottom, 25)
                    }
                }
            }
            .background(Color.white)
        }
    }
}
