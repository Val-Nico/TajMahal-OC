//
//  LineView.swift
//  TajMahal
//
//  Created by Valentin Nicolas on 17/12/2025.
//

import SwiftUI

struct LineView: View {
    let systemIcon: String  // Nom de l'icône SF Symbol (ex: "phone")
    let leftText: String    // Texte principal (ex: "06 12 34 56 78")
    let rightText: String   // Texte secondaire optionnel (ex: "À emporter")
    
    var body: some View {
        HStack(spacing: 12) {
            
            //L'icône grise à gauche
            Image(systemName: systemIcon)
                .font(.system(size: 16))
                .foregroundColor(.gray)
                .frame(width: 20, alignment: .leading) // Largeur fixe pour aligner les textes
            
            // Le texte principal
            Text(leftText)
                .font(.system(size: 14))
                .foregroundColor(.gray)
            
            Spacer() // Pousse le texte de droite vers le bord
            
            // Le texte à droite 
            if !rightText.isEmpty {
                Text(rightText)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 2) // Petit espace entre les lignes
    }
}

// Preview pour tester le rendu
#Preview {
    VStack {
        LineView(systemIcon: "phone", leftText: "06 12 34 56 78", rightText: "")
        LineView(systemIcon: "bag", leftText: "Type de Service", rightText: "À emporter")
    }
    .padding()
}
