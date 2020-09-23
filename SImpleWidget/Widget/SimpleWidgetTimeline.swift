//
//  SimpleWidgetTimeline.swift
//  SImpleWidgetExtension
//
//  Created by ramil on 23.09.2020.
//

import WidgetKit
import SwiftUI

struct SimpleWidgetTimeline: TimelineProvider {
    
    typealias Entry = SimpleWidgetEntry
    
    func getSnapshot(in context: Context, completion: @escaping (SimpleWidgetEntry) -> Void) {
        let entry = SimpleWidgetEntry(date: Date())
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<SimpleWidgetEntry>) -> Void) {
        var entries: [SimpleWidgetEntry] = []
        
        let currentDate = Date()
        
        for dayOffset in 0..<7 {
            let entryDate = Calendar.current.date(byAdding: .day, value: dayOffset, to: currentDate)!
            let entry = SimpleWidgetEntry(date: entryDate)
            entries.append(entry)
        }
        
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
    
    func placeholder(in context: Context) -> SimpleWidgetEntry {
        SimpleWidgetEntry(date: Date())
    }
}
