//
//  TabView.swift
//  
//
//  Created by Chicmic on 04/05/23.
//

import SwiftUI

struct tabView: View {
    @ObservedObject var viewModel = ViewModel()
    init() {
            UITabBar.appearance().backgroundColor = UIColor.black
        }
    
    var body: some View {
        TabView {
            article()
                .tabItem {
                    Label(Constants.Labels.articleLabel, systemImage: Constants.Icons.articlesIcon)
                }

            slider(viewModel: viewModel)
                .tabItem {
                    Label(Constants.Labels.testLabel, systemImage: Constants.Icons.testIcon)
                }
            
            chart(viewModel: viewModel)
                .tabItem {
                    Label(Constants.Labels.analysisLabel, systemImage: Constants.Icons.analysisIcon)
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
