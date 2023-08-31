//
//  AnalyticsView.swift
//  iOSGoogleAnalytics
//
//  Created by 조기연 on 2023/08/31.
//

import SwiftUI

struct AnalyticsView<Component: View>: View {
    @ViewBuilder let analytics: Component

    var body: some View {
        analytics
    }
}
