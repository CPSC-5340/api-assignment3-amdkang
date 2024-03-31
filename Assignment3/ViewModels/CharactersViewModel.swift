//
//  CharactersViewModel.swift
//  Assignment3
//
//  Created by Amenda Kang on 3/30/24.
//

import Foundation

class CharactersViewModel : ObservableObject {
    
    @Published private(set) var charactersData = [CharacterModel]()
    private let url = "https://rickandmortyapi.com/api/character/?name=rick"
    
    func fetchData() {
        if let url = URL(string: url) {
            URLSession
                .shared
                .dataTask(with: url) { (data, response, error) in
                    if let error = error {
                        print(error)
                    } else {
                        if let data = data {
                            do {
                                let decoded = try JSONDecoder().decode(CharacterResults.self, from: data)
                                self.charactersData = decoded.results
                            } catch {
                                print(error)
                            }
                        }
                    }
                
                }.resume()
        }
    }
}
