//
//  SImpleWidget.swift
//  SImpleWidget
//
//  Created by ramil on 23.09.2020.
//

import WidgetKit
import SwiftUI

@main
struct SImpleWidget: Widget {
    private let kind: String = "SimpleWidget"
    
    var body: some WidgetConfiguration {
        
        StaticConfiguration(kind: kind, provider: SimpleWidgetTimeline()) { entry in
            SimpleWidgetEntryView(entry: entry)
        }
    }
}
