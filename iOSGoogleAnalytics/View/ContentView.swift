//
//  ContentView.swift
//  iOSGoogleAnalytics
//
//  Created by 조기연 on 2023/08/21.
//

import FirebaseAnalyticsSwift
import SwiftUI

struct ContentView: View {
    let analyticsComponents: [AnalyticsComponent] = [
        AnalyticsComponent(name: "Button", view: AnyView(AnalyticsButton())),
    ]

    var body: some View {
        List(analyticsComponents) { analyticsComponent in
            NavigationLink(analyticsComponent.name, value: analyticsComponent.view)
        }
        .navigationDestination(for: AnyView.self) { component in
            AnalyticsView {
                component
            }
        }
        .analyticsScreen(name: "main_content", class: "ContentView")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
