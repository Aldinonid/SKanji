//
//  SKanjiApp.swift
//  SKanji WatchKit Extension
//
//  Created by Aldino Efendi on 2021/08/20.
//

import SwiftUI

@main
struct SKanjiApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
