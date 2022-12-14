//
//  PokemonDetailView.swift
//  pokedex_swift
//
//  Created by Matheus on 14/12/22.
//

import SwiftUI

struct PokemonDetailView: View {
    @StateObject var vm = ViewModel()
    let pokemon: Pokemon
    
    var body: some View {
        VStack {
            VStack(spacing: 10) {
                Text("**ID**: \(vm.pokemonDetails?.id ?? 0)")
                Text("**WEIGHT**: \(vm.pokemonDetails?.weight ?? 0) Kg")
                Text("**HEIGHT**: \(vm.pokemonDetails?.height ?? 0) m")
            }
        }
        .onAppear {
            vm.getDetails(pokemon: pokemon)
        }
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: Pokemon.samplePokemon)
            .environmentObject(ViewModel())
    }
}
