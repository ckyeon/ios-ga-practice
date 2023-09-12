//
//  Ext+View.swift
//  iOSGoogleAnalytics
//
//  Created by 조기연 on 2023/09/12.
//

import SwiftUI

extension View {
    var name: String {
        let name = String(describing: self)
        let innerName = name.subString(from: "<", to: ">")
        let viewName = innerName.subString(from: ".", to: ")")
        return viewName
    }
}
