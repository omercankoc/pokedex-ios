import SwiftUI

var pokemonID : String = ""

struct PokemonDetail: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(pokemonID)")
        }.onAppear(perform: {getID()})
    }
    
    func getID(){
        pokemonID = UserDefaults.standard.string(forKey: "pokemonID") ?? "0"
    }
}

struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetail()
    }
}
