//
//  PhotoWidgetApp.swift
//  PhotoWidget
//
//  Created by Sopnil Sohan on 24/8/22.
//

import SwiftUI

@main
struct PhotoWidgetApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ImageManager())
        }
    }
}
