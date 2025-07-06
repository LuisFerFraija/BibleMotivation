//
//  BibleMotivation10WidgetLiveActivity.swift
//  BibleMotivation10Widget
//
//  Created by Luis Fernando on 6/24/25.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct BibleMotivation10WidgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct BibleMotivation10WidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: BibleMotivation10WidgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension BibleMotivation10WidgetAttributes {
    fileprivate static var preview: BibleMotivation10WidgetAttributes {
        BibleMotivation10WidgetAttributes(name: "World")
    }
}

extension BibleMotivation10WidgetAttributes.ContentState {
    fileprivate static var smiley: BibleMotivation10WidgetAttributes.ContentState {
        BibleMotivation10WidgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: BibleMotivation10WidgetAttributes.ContentState {
         BibleMotivation10WidgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: BibleMotivation10WidgetAttributes.preview) {
   BibleMotivation10WidgetLiveActivity()
} contentStates: {
    BibleMotivation10WidgetAttributes.ContentState.smiley
    BibleMotivation10WidgetAttributes.ContentState.starEyes
}
