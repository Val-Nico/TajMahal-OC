//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//
import SwiftUI

struct MenuView: View {
    // On appelle le ViewModel qui contient nos listes de plats
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        // NavigationStack permet de gérer le passage vers la page de détail
        NavigationStack {
            List {
                // SECTION 1 : LES ENTRÉES
                Section(header: Text("Entrées")) {
                    ForEach(viewModel.appetizers) { dish in
                        // Quand on clique, on va vers DetailView en lui passant le plat actuel
                        NavigationLink(destination: DetailView(dish: dish)) {
                            DishViewCard(dish: dish)
                        }
                        .listRowSeparator(.hidden)
                    }
                }
                
                // SECTION 2 : LES PLATS PRINCIPAUX
                Section(header: Text("Plats Principaux")) {
                    ForEach(viewModel.mainCourses) { dish in
                        NavigationLink(destination: DetailView(dish: dish)) {
                            DishViewCard(dish: dish)
                        }
                        .listRowSeparator(.hidden)
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(.plain) 
        }
    }
}

// Preview pour voir le résultat directement dans Xcode
#Preview {
    MenuView()
}
