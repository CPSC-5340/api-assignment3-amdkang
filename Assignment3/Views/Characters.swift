//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct Characters: View {
    
    @ObservedObject var charactersvm = CharactersViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(charactersvm.charactersData) {
                    character in
                    NavigationLink {
                        CharacterDetail(character: character)
                    }label : {
                        Text(character.name)
                    }
                }
            }
            .onAppear {
                charactersvm.fetchData()
            }
            .listStyle(.grouped)
            .navigationTitle("Ricks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Characters()
    }
}
