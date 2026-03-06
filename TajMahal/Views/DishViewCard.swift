//
//  DishViewCard.swift
//  TajMahal
//
//  Created by Valentin Nicolas on 23/10/2025.
//

import SwiftUI

struct DishViewCard: View {
    let dish: Dish
    
    var body: some View {
        HStack(spacing: 15) {
            // 1. IMAGE CARRÉE À GAUCHE
            Image(dish.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
                .clipped()
            
            // 2. CONTENU TEXTUEL À DROITE
            VStack(alignment: .leading, spacing: 5) {
                Text(dish.name)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.black)
                
                Text(dish.description)
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
                    .lineLimit(2)
                
                Spacer()
                
                // 3. LIGNE PRIX + PIMENTS
                HStack {
                    Text(dish.price)
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    // Affichage des piments (🌶️)
                    HStack(spacing: 2) {
                        ForEach(1...3, id: \.self) { index in
                            Text("🌶️")
                                .font(.system(size: 12))
                                .grayscale(index <= dish.spiciness.rawValue ? 0 : 1.0)
                                .opacity(index <= dish.spiciness.rawValue ? 1.0 : 0.2)
                        }
                    }
                }
            }
        }
        .padding(.vertical, 8)
    }
}

// SECTION PREVIEW CORRIGÉE (Compatible toutes versions iOS et sans avertissements)
struct DishViewCard_Previews: PreviewProvider {
    static var previews: some View {
        DishViewCard(dish: Dish(
            name: "Samosas aux légumes",
            description: "Délicieux chaussons frits garnis de légumes épicés avec une sauce menthe",
            allergens: "Gluten",
            ingredients: "Légumes, Farine, Épices",
            price: "5,50€",
            spiciness: .medium,
            imageName: "Samosas"
        ))
        .previewLayout(.sizeThatFits) // Définit la taille de la preview
        .padding()
    }
}
