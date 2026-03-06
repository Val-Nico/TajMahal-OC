//
//  SplashView.swift
//  TajMahal
//
//  Created by Valentin Nicolas on 27/02/2026.
//
import SwiftUI

struct SplashView: View {
    // État pour savoir si on doit passer à l'écran suivant
    @State private var isActive = false
    
    var body: some View {
        ZStack {
            if isActive {
                // Une fois le délai passé, on affiche la vue d'accueil
                WelcomeView()
            } else {
                // --- ÉCRAN DE CHARGEMENT ---
                ZStack {
                    // Fond rouge (Couleur officielle du projet)
                    Color(red: 0.67, green: 0.15, blue: 0.13)
                        .ignoresSafeArea()
                    
                    // Logo blanc au centre
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                }
                .onAppear {
                    // Délai de 1.5 seconde avant de changer l'état
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            isActive = true
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
