//
//  article.swift
//  
//
//  Created by Chicmic on 04/05/23.
//

import SwiftUI

struct article: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                ScrollView {
                    ForEach(Constants.Articles.titles.indices, id: \.self) {index in
                        VStack(alignment: .leading) {
                            Link(destination: URL(string: Constants.Articles.urls[index])!) {
                                Image(systemName: Constants.Icons.linkIcon)
                                    .foregroundColor(.blue)
                            }
                            
                            HStack(alignment: .center) {
                                Image(Constants.Articles.images[index])
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                            }
                            
                            Text(Constants.Articles.titles[index])
                                .font(.title)
                                .padding(8)
                            
                            Text(Constants.Articles.summary[index])
                                .lineLimit(6)
                                .font(.body)
                                .padding(8)
                        }.cornerRadius(10)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 0.1, green: 0.1, blue: 0.1)
                            )
                            .cornerRadius(20)
                            .padding()
                    }
                }.navigationTitle(Constants.Labels.articleLabel)
            }
        }
    }
    
}

struct article_Previews: PreviewProvider {
    static var previews: some View {
        article()
    }
}
