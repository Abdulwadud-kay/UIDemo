//
//  UIDemoApp.swift
//  UIDemo
//
//  Created by Abdulwadud Abdulkadir on 2/7/24.
//

import SwiftUI

@main
struct UIDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ArtifactsListView(viewModel: ArtifactsViewModel())
        }
    }
}
