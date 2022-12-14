//
//  PokemonView.swift
//  pokedex_swift
//
//  Created by Matheus on 14/12/22.
//

import SwiftUI

struct PokemonView: View {
    @EnvironmentObject var vm: ViewModel
    let pokemon: Pokemon
    let dimensions: Double = 140
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/\(vm.getPokemonIndex(pokemon: pokemon)).png")) {image in
                if let image = image {
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: dimensions, height: dimensions)
                        .aspectRatio(contentMode: .fill)
                }
            }placeholder: {
                ProgressView()
                    .frame(width: dimensions, height: dimensions)
            }
            
            .background(
                .ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            .padding()
            Text("\(pokemon.name.capitalized)")
                .font(.system(size: 16,
                              weight: .regular,
                              design: .monospaced))
                .padding(.bottom, 20)
        }
    }
    
}
struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView(pokemon: Pokemon.samplePokemon)
            .environmentObject(ViewModel())
    }
}
