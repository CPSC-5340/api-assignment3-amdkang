//
//  ProfileImageView.swift
//  Assignment3
//
//  Created by Amenda Kang on 3/30/24.
//

import SwiftUI

struct ProfileImageView: View {
    var url : String
    
    var body: some View {
        AsyncImage(url: URL(string: url)) {
            image in
            image.resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }
    }
}

#Preview {
    ProfileImageView(url: "https://rickandmortyapi.com/api/character/avatar/1.jpeg")
}
