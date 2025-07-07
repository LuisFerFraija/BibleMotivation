//
//  BibleMotivation10Widget.swift
//  BibleMotivation10Widget
//
//  Created by Luis Fernando on 6/24/25.
//

import WidgetKit
import SwiftUI

@main
struct BibleMotivation10Widget: Widget {
    let kind: String = "BibleMotivation10Widget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            BibleWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Versículo Aleatorio")
        .description("Muestra un versículo motivacional en el widget.")
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
    }
}


