//
//  DetailView.swift
//  TajMahal
//
//  Created by Valentin Nicolas on 17/12/2025.
//
import SwiftUI

struct DetailView: View {
    // Le plat est passé en paramètre depuis la MenuView
    let dish: Dish

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                
                ZStack(alignment: .topTrailing) {
                    Image(dish.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity)
                        .frame(height: 250)
                        .clipped()
                        .cornerRadius(15)
                    
                    // Badge blanc pour les piments
                    HStack(spacing: 4) {
                        ForEach(1...3, id: \.self) { index in
                            Text("🌶️")
                                .font(.system(size: 14))
                                // Si l'index est supérieur au niveau de piment, on grise l'émoji
                                .grayscale(index <= dish.spiciness.rawValue ? 0 : 1.0)
                                .opacity(index <= dish.spiciness.rawValue ? 1.0 : 0.2)
                        }
                    }
                    .padding(8)
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(10)
                    .padding(15) // Marge par rapport au bord de l'image
                }
                .padding(.horizontal)
                
                // INFORMATIONS DU PLAT
                VStack(alignment: .leading, spacing: 15) {
                    // Titre du plat
                    Text(dish.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    // Section Allergènes
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Allergènes :")
                            .font(.headline)
                            .foregroundColor(.gray)
                        Text(dish.allergens)
                            .font(.body)
                    }
                    
                    Divider() // Ligne de séparation grise demandée
                    
                    // Section Ingrédients
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Ingrédients :")
                            .font(.headline)
                            .foregroundColor(.gray)
                        Text(dish.ingredients)
                            .font(.body)
                            .lineSpacing(5) // Plus d'espace entre les lignes pour la lisibilité
                    }
                }
                .padding(.horizontal)
            }
        }
        // Affiche le nom du plat en haut de l'écran dans la barre de navigation
        .navigationBarTitleDisplayMode(.inline)
    }
}

// Preview pour tester le rendu dans Xcode
#Preview {
    NavigationStack {
        DetailView(dish: Dish(
            name: "Chicken Tikka Masala",
            description: "Poulet mariné, grillé et servi dans une sauce masala",
            allergens: "Lait, Yaourt, Ghee, Crème",
            ingredients: "Poulet, Oignon, Tomates, Crème, Épices",
            price: "13,00€",
            spiciness: .hot,
            imageName: "Chicken"
        ))
    }
}
