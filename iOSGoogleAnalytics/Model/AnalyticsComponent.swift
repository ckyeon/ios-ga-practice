//
//  AnalyticsComponent.swift
//  iOSGoogleAnalytics
//
//  Created by 조기연 on 2023/08/31.
//

import Foundation
import SwiftUI

struct AnalyticsComponent: Identifiable, Hashable {
    let id: UUID

    let name: String
    let view: AnyView

    init(id: UUID = UUID(), name: String, view: AnyView) {
        self.id = id
        self.name = name
        self.view = view
    }

    static func == (lhs: AnalyticsComponent, rhs: AnalyticsComponent) -> Bool {
        lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
