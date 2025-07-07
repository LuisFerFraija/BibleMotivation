//
//  BibleWidgetEntryView.swift
//  BibleMotivation10Widget
//
//  Created by Luis Fernando on 6/24/25.
//

import SwiftUI
import WidgetKit

struct BibleWidgetEntryView: View {
    var entry: SimpleEntry
    @Environment(\.widgetFamily) var family

    @ViewBuilder
    var body: some View {
        if family == .systemSmall {
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

        } else if family == .systemMedium {
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
            .containerBackground(.fill, for: .widget)

        } else if family == .systemLarge {
            ZStack {
                Image("fortaleza")
                    .resizable()
                    .scaledToFill()
                    .clipped()

                VStack(alignment: .leading, spacing: 10) {
                    Text("Versículo del día")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)

                    Text(entry.verse.text)
                        .font(.title3)
                        .lineLimit(5)
                        .foregroundColor(.white)

                    Text(entry.verse.reference)
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.8))

                    Spacer()
                }
                .padding()
            }
            .containerBackground(.fill, for: .widget)

        } else {
            EmptyView() // Para cualquier otro tamaño futuro
        }
    }
}
