import Foundation

struct PokemonModel : Decodable, Identifiable, Hashable {
    let id = UUID()
    var name : String
    var url : String
}

struct PokemonDetail : Codable {
    var id : Int
    var height : Int
    var width : Int
}
