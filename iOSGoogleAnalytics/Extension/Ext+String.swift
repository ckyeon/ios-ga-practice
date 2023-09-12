//
//  Ext+String.swift
//  iOSGoogleAnalytics
//
//  Created by 조기연 on 2023/09/12.
//

import Foundation

extension String {
    func subString(from: Character, to: Character) -> String {
        return subString(from: from)
            .subString(to: to)
    }

    func subString(from: Character) -> String {
        let startIndex = firstIndex(of: from)
        let endIndex = endIndex

        if let startIndex = startIndex {
            let afterStartIndex = index(after: startIndex)
            return String(self[afterStartIndex ..< endIndex])
        }
        return self
    }

    func subString(to: Character) -> String {
        let startIndex = startIndex
        let endIndex = lastIndex(of: to)

        if let endIndex = endIndex {
            return String(self[startIndex ..< endIndex])
        }
        return self
    }
}
