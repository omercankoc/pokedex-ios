import SwiftUI

struct ContentView: View {
    
    @State var pokemon = [PokemonEntry]()
    @State var search = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(search == "" ? pokemon : pokemon.filter ({
                        $0.name.contains(search.lowercased())
                    
                })) {
                        entry in
                        NavigationLink("\(entry.name)".capitalized,
                                       destination: Text("Detail view for \(entry.name)"))
                    }
            }
            .onAppear {
                PokeApi().getData() {
                    pokemon in self.pokemon = pokemon
                }
            }
            .searchable(text: $search)
            .navigationTitle("Pokedex")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
