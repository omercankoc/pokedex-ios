import Foundation

struct Pokedex : Codable {
    let count : Int
    let next : String
    let result : [Pokemon]
}

struct Pokemon : Codable, Identifiable,Equatable {
    let id = UUID()
    let name : String
    let url : String
    
    static var samplePokemon = Pokemon(name : "balbasaur",url :"https://pokeapi.co/api/v2/pokemon/1/")
}

struct Detail : Codable {
    let id : Int
    let height : Int
    let weight : Int
}
