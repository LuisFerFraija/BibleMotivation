//
//  BibleVerse.swift
//  BibleMotivation10
//
//  Created by Luis Fernando on 6/24/25.
//

struct BibleVerse {
    let text: String
    let reference: String

    var shortText: String {
        let palabras = text.split(separator: " ")
        let primeras = palabras.prefix(3).joined(separator: " ")
        return "\(primeras)..."
    }
}
