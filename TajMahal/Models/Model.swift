//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import Foundation

// 1. Enumération pour le niveau de piment
// On utilise Int pour pouvoir boucler dessus (ex: afficher 3 piments si le niveau est 3)
enum Spiciness: Int {
    case light = 1
    case medium = 2
    case hot = 3
}

// 2. Structure du plat
// Identifiable est obligatoire pour que la List dans MenuView fonctionne
struct Dish: Identifiable {
    let id = UUID() // Génère un identifiant unique automatiquement
    let name: String
    let description: String
    let allergens: String
    let ingredients: String
    let price: String
    let spiciness: Spiciness
    let imageName: String
}
