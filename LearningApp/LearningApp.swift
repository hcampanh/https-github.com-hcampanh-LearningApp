//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by henrique campanha on 29/12/2021.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
