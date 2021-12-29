//
//  ContentView.swift
//  LearningApp
//
//  Created by henrique campanha on 29/12/2021.
//

import SwiftUI

struct HomeView: View {
   @EnvironmentObject var model: ContentModel
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
