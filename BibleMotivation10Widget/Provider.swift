//
//  Provider.swift
//  BibleMotivation10
//
//  Created by Luis Fernando on 6/24/25.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), verse: VerseRepository.all.first!)
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> Void) {
        let entry = SimpleEntry(date: Date(), verse: VerseRepository.randomVerse())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<SimpleEntry>) -> Void) {
        let entry = SimpleEntry(date: Date(), verse: VerseRepository.randomVerse())
        let timeline = Timeline(entries: [entry], policy: .atEnd)
        completion(timeline)
    }
}
