//
//  PokemonGridItems.swift
//  PokemonApp SwiftUI
//
//  Created by mac on 9/13/24.
//

import SwiftUI

struct PokemonGridItems: View {
    
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    
    @ObservedObject var viewModel = PokemonViewModel()
    

    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.2), Color.pink.opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView{
                    LazyVGrid(columns: gridItems, spacing: 16){
                        ForEach(viewModel.pokemon){
                            pokemon in
                            NavigationLink{
                                PokemonDetailView(viewModel: viewModel, pokemon: pokemon)
                                
                            } label: {
                                PokeCell(pokemon: pokemon, viewModel: viewModel)
                            }
                            
                        }
                    }
                    
                }

            }
        }
    }
}

struct PokemonGridItems_Previews: PreviewProvider {
    static var previews: some View {
        PokemonGridItems()
    }
}
