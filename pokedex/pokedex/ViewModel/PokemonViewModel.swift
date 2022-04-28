import Foundation
import Combine

class PokemonListViewModel : ObservableObject {
    let pokemonService = PokemonService()
    @Published var pokemonList = [PokemonViewModel]()
    func getPokemonUsingService(url : URL) async {
        do {
            let pokemon = try await pokemonService.getPokemon(url: url)
            DispatchQueue.main.async {
                self.pokemonList = pokemon.map(PokemonViewModel.init)
            }
        } catch {
            print(error)
        }
    }
}

struct PokemonViewModel {
    let pokemon : PokemonModel
    var id : UUID? {
        pokemon.id
    }
    var name : String {
        pokemon.name
    }
    var url : String {
        pokemon.url
    }
}
