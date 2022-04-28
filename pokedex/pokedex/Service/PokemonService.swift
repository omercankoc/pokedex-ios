//
//  PokemonService.swift
//  pokedex
//
//  Created by Ömer Can Koç on 28.04.2022.
//

import Foundation

class PokemonService {
    func getPokemon(url : URL) async throws -> [PokemonModel] {
        let (data,_) = try await URLSession.shared.data(from: url)
        let pokemon = try? JSONDecoder().decode([PokemonModel].self, from: data)
        return pokemon ?? []
    }
}
