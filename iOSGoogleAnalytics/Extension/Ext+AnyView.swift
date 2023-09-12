//
//  Ext+AnyView.swift
//  iOSGoogleAnalytics
//
//  Created by 조기연 on 2023/09/12.
//

import SwiftUI

extension AnyView: Identifiable, Hashable {
    public var id: UUID {
        return UUID()
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    public static func == (lhs: AnyView, rhs: AnyView) -> Bool {
        return lhs.id == rhs.id
    }
}
