//
//  ViewModel.swift
//  TajMahal
//
//  Created by Amandine Cousin on 07/11/2023.
//

import Foundation

//Strcture qui gère toute la logique du code
// Fait l'intermédiaire entre l'affichage et les données
class ViewModel: ObservableObject {
    @Published var appetizers: [Dish] = [
        Dish(name: "Samosas aux légumes", description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Gluten", ingredients: "Légumes, Farine, Épices", price: "5,50€", spiciness: .medium, imageName: "Samosas"),
        Dish(name: "Pakoras", description: "Beignets de légumes enrobés de pâte épicée et frits", allergens: "Aucun", ingredients: "Légumes, Farine de pois chiche", price: "5,50€", spiciness: .light, imageName: "Pakoras"),
        Dish(name: "Aloo Tikki", description: "Galettes de pommes de terre épicées et croustillantes", allergens: "Aucun", ingredients: "Pommes de terre, Épices", price: "5,50€", spiciness: .medium, imageName: "Aloo")
    ]
    
    // Liste des plats principaux
    @Published var mainCourses: [Dish] = [
        Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, Yaourt, Ghee, Crème", ingredients: "Poulet, Oignon, Tomates, Crème, Épices", price: "13,00€", spiciness: .medium, imageName: "Tikka Masala"),
        Dish(name: "Biryani aux légumes", description: "Riz parfumé cuit avec des légumes et des épices", allergens: "Lait (Ghee)", ingredients: "Riz, Légumes, Épices", price: "10,50€", spiciness: .medium, imageName: "Biryani")
    ]
}
