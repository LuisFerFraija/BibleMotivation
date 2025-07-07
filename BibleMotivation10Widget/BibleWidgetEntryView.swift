//
//  BibleWidgetEntryView.swift
//  BibleMotivation10
//
//  Created by Luis Fernando on 6/24/25.
//

import SwiftUI
import WidgetKit

struct BibleWidgetEntryView: View {
    var entry: SimpleEntry
    @Environment(\.widgetFamily) var family

    var body: some View {
        switch family {
        case .systemSmall:
            VStack(spacing: 6) {
                Text(entry.verse.shortText)
                    .font(.headline)
                    .multilineTextAlignment(.center)

                Text(entry.verse.reference)
                    .font(.caption2)
                    .foregroundColor(.secondary)
            }
            .padding()
            .containerBackground(.fill, for: .widget)


        case .systemMedium:
            HStack {
                Image("fortaleza")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                    .clipShape(RoundedRectangle(cornerRadius: 10))

                VStack(alignment: .leading, spacing: 4) {
                    Text(entry.verse.text)
                        .font(.body)
                        .lineLimit(3)

                    Text(entry.verse.reference)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            .padding()
            .containerBackground(Color.cyan, for: family)

        case .systemLarge:
            VStack(alignment: .leading, spacing: 10) {
                Text("Versículo del día")
                    .font(.title3)
                    .bold()

                Text(entry.verse.text)
                    .font(.title3)
                    .lineLimit(5)

                Text(entry.verse.reference)
                    .font(.caption)
                    .foregroundColor(.secondary)

                Spacer()
            }
            .padding()
            .containerBackground(Color.cyan, for: family)

        default:
            Text("Tamaño no soportado")
        }
    }
}
