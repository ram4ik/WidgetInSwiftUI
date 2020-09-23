//
//  PlaceholderView.swift
//  SImpleWidgetExtension
//
//  Created by ramil on 23.09.2020.
//

import SwiftUI

struct PlaceholderView: View {
    var body: some View {
        Text("Placeholder")
            .redacted(reason: .placeholder)
    }
}

struct PlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceholderView()
    }
}
