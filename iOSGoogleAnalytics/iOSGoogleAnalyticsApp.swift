//
//  iOSGoogleAnalyticsApp.swift
//  iOSGoogleAnalytics
//
//  Created by 조기연 on 2023/08/21.
//

import Firebase
import SwiftUI

@main
struct iOSGoogleAnalyticsApp: App {
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
