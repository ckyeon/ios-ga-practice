//
//  Button.swift
//  iOSGoogleAnalytics
//
//  Created by 조기연 on 2023/08/31.
//

import Firebase
import FirebaseAnalytics
import SwiftUI

struct AnalyticsButton: View {
    var body: some View {
        Button {
            Analytics.logEvent("click_button", parameters: [
                AnalyticsParameterItemID: "id-button",
                AnalyticsParameterItemName: "button",
                AnalyticsParameterContentType: "button",
            ])
        } label: {
            ZStack {
                Rectangle()
                    .frame(width: 100, height: 50)
                Text("Button")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
        }
    }
}

struct AnalyticsButton_Previews: PreviewProvider {
    static var previews: some View {
        AnalyticsButton()
    }
}
