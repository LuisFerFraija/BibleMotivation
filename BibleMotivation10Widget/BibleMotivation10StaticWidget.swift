//
//  BibleMotivation10StaticWidget.swift
//  BibleMotivation10
//
//  Created by Luis Fernando on 6/26/25.
//

import WidgetKit
import SwiftUI

struct BibleMotivation10StaticWidget: Widget {
  let kind = "com.tekwor.BibleMotivation10.BibleMotivation10StaticWidget"

  var body: some WidgetConfiguration {
    StaticConfiguration(kind: kind, provider: Provider()) { entry in
      BibleWidgetEntryView(entry: entry)
    }
    .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
    .configurationDisplayName("Versículo del día")
    .description("Muestra un versículo bíblico al día.")
  }
}
