//
//  CharacterDetail.swift
//  Assignment3
//
//  Created by Amenda Kang on 3/30/24.
//

import SwiftUI

struct CharacterDetail: View {
    
    var character : CharacterModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(character.name)
                .font(.system(size: 30))
            ProfileImageView(url: character.image)
            Text("Status: \(character.status)")
                .font(.system(size: 20))
            Text("Species: \(character.species)")
                .font(.system(size: 20))
            Text("Gender: \(character.gender)")
                .font(.system(size: 20))
            if !character.type.isEmpty == true {
                Text("Type: \(character.type)")
                    .font(.system(size: 20))
            }
        }
        .padding(10)
    }
}
