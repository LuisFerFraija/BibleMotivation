//
//  VerseRepository.swift
//  BibleMotivation10
//
//  Created by Luis Fernando on 6/24/25.
//

struct VerseRepository {
    static let all: [BibleVerse] = [
        BibleVerse(text: "El Señor es mi pastor, nada me faltará", reference: "Salmo 23:1"),
        BibleVerse(text: "Todo lo puedo en Cristo que me fortalece", reference: "Filipenses 4:13"),
        // ... hasta 50 versículos
        BibleVerse(text: "Sean agradecidos en todo", reference: "1 Tesalonicenses 5:18")
    ]

    static func randomVerse() -> BibleVerse {
        all.randomElement() ?? BibleVerse(text: "Dios es amor", reference: "1 Juan 4:8")
    }
}
    
