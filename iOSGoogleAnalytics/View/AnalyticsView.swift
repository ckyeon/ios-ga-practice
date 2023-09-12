//
//  AnalyticsView.swift
//  iOSGoogleAnalytics
//
//  Created by 조기연 on 2023/08/31.
//

import FirebaseAnalyticsSwift
import SwiftUI

struct AnalyticsView<Component: View>: View {
    @ViewBuilder let analytics: Component

    var body: some View {
        analytics
            .analyticsScreen(name: "analytics_component", class: "\(analytics.name))")
    }
}
