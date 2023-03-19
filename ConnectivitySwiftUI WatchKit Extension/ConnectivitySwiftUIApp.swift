//
//  ConnectivitySwiftUIApp.swift
//  ConnectivitySwiftUI WatchKit Extension
//
//  Created by Admin on 19/03/2023.
//

import SwiftUI

@main
struct ConnectivitySwiftUIApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
