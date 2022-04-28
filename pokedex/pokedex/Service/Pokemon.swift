// "https://pokeapi.co/api/v2/pokemon?limit=151"

import Foundation

/*
struct Pokemon : Codable {
    var results : [PokemonResults]
}

struct PokemonResults : Codable, Identifiable {
    let id = UUID()
    var name : String
    var url : String
} */

class PokemonApi {
    func getPokemon(completion : @escaping ([PokemonResults]) -> ()){
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=100") else {
            return
        }
        URLSession.shared.dataTask(with: url){(data,response,error) in
            guard let data = data else { return }
            let pokemonList = try! JSONDecoder().decode(Pokemon.self, from: data)
            DispatchQueue.main.async {
                completion(pokemonList.results)
            }
        }.resume()
    }
}
