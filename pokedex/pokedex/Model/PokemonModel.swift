import Foundation

struct Pokemon : Codable {
    var results : [PokemonResults]
}

struct PokemonResults : Codable, Identifiable, Equatable {
    let id = UUID()
    var name : String
    var url : String
}

struct PokemonDetail : Codable {
    var id : Int
    var height : Int
    var width : Int
}
