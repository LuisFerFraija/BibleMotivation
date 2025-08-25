//
//  VerseRepository.swift
//  BibleMotivation10
//
//  Created by Luis Fernando on 6/24/25.
//

struct VerseRepository {
    static let all: [BibleVerse] = [
            // Salmos
            BibleVerse(text: "Jehová es mi pastor; nada me faltará.", reference: "Salmos 23:1"),
            BibleVerse(text: "Aunque ande en valle de sombra de muerte, no temeré mal alguno, porque tú estarás conmigo.", reference: "Salmos 23:4"),
            BibleVerse(text: "El Señor es mi luz y mi salvación; ¿de quién temeré?", reference: "Salmos 27:1"),
            BibleVerse(text: "Esforzaos todos vosotros los que esperáis en Jehová, y tome aliento vuestro corazón.", reference: "Salmos 31:24"),
            BibleVerse(text: "En ti, Señor, he puesto mi esperanza; nunca me avergonzaré.", reference: "Salmos 71:1"),
            BibleVerse(text: "Dios es nuestro amparo y fortaleza, nuestro pronto auxilio en las tribulaciones.", reference: "Salmos 46:1"),
            BibleVerse(text: "Estad quietos, y conoced que yo soy Dios.", reference: "Salmos 46:10"),
            BibleVerse(text: "El que habita al abrigo del Altísimo morará bajo la sombra del Omnipotente.", reference: "Salmos 91:1"),
            BibleVerse(text: "Diré yo a Jehová: Esperanza mía, y castillo mío; mi Dios, en quien confiaré.", reference: "Salmos 91:2"),
            BibleVerse(text: "Pues a sus ángeles mandará acerca de ti, que te guarden en todos tus caminos.", reference: "Salmos 91:11"),
            BibleVerse(text: "Te alabaré, porque formidables y maravillosas son tus obras.", reference: "Salmos 139:14"),
            BibleVerse(text: "Encomienda a Jehová tu camino, confía en él, y él hará.", reference: "Salmos 37:5"),
            BibleVerse(text: "Deléitate asimismo en Jehová, y él te concederá las peticiones de tu corazón.", reference: "Salmos 37:4"),
            BibleVerse(text: "Gustad, y ved que es bueno Jehová; dichoso el hombre que confía en él.", reference: "Salmos 34:8"),
            BibleVerse(text: "Claman los justos, y Jehová oye, y los libra de todas sus angustias.", reference: "Salmos 34:17"),
            BibleVerse(text: "Jehová está cerca de los quebrantados de corazón.", reference: "Salmos 34:18"),
            BibleVerse(text: "El que guarda la integridad camina confiado.", reference: "Salmos 15:2"),
            BibleVerse(text: "Mi carne y mi corazón desfallecen; mas la roca de mi corazón y mi porción es Dios para siempre.", reference: "Salmos 73:26"),
            BibleVerse(text: "Porque sol y escudo es Jehová Dios; gracia y gloria dará Jehová.", reference: "Salmos 84:11"),
            BibleVerse(text: "Bendice, alma mía, a Jehová, y bendiga todo mi ser su santo nombre.", reference: "Salmos 103:1"),
            BibleVerse(text: "Porque como la altura de los cielos sobre la tierra, engrandeció su misericordia sobre los que le temen.", reference: "Salmos 103:11"),
            BibleVerse(text: "Lámpara es a mis pies tu palabra, y lumbrera a mi camino.", reference: "Salmos 119:105"),
            BibleVerse(text: "Este es el día que hizo Jehová; nos gozaremos y alegraremos en él.", reference: "Salmos 118:24"),
            BibleVerse(text: "Jehová cumplirá su propósito en mí; tu misericordia, oh Jehová, es para siempre.", reference: "Salmos 138:8"),
            BibleVerse(text: "Jehová peleará por vosotros, y vosotros estaréis tranquilos.", reference: "Salmos 62:1"),

            // Proverbios
            BibleVerse(text: "Confía en Jehová con todo tu corazón y no te apoyes en tu propia prudencia.", reference: "Proverbios 3:5"),
            BibleVerse(text: "Reconócelo en todos tus caminos, y él enderezará tus veredas.", reference: "Proverbios 3:6"),
            BibleVerse(text: "Honra a Jehová con tus bienes y con las primicias de todos tus frutos.", reference: "Proverbios 3:9"),
            BibleVerse(text: "No temas, porque Jehová será tu confianza y guardará tu pie de quedar preso.", reference: "Proverbios 3:26"),
            BibleVerse(text: "El camino de los justos es como la luz de la aurora, que va en aumento hasta que el día es perfecto.", reference: "Proverbios 4:18"),
            BibleVerse(text: "Sobre toda cosa guardada, guarda tu corazón; porque de él mana la vida.", reference: "Proverbios 4:23"),
            BibleVerse(text: "El oído que escucha las reprensiones de la vida, entre los sabios morará.", reference: "Proverbios 15:31"),
            BibleVerse(text: "La respuesta amable calma el enojo, pero la palabra áspera aumenta la ira.", reference: "Proverbios 15:1"),
            BibleVerse(text: "El corazón alegre hermosea el rostro; mas por el dolor del corazón el espíritu se abate.", reference: "Proverbios 15:13"),
            BibleVerse(text: "Mejor es lo poco con el temor de Jehová, que gran tesoro donde hay turbación.", reference: "Proverbios 15:16"),
            BibleVerse(text: "Los pensamientos son frustrados donde no hay consejo; mas en la multitud de consejeros se afirman.", reference: "Proverbios 15:22"),
            BibleVerse(text: "La lengua apacible es árbol de vida.", reference: "Proverbios 15:4"),
            BibleVerse(text: "La mansedumbre calma la ira.", reference: "Proverbios 15:18"),
            BibleVerse(text: "Mejor es un bocado seco, y en paz, que casa de contiendas llena de provisiones.", reference: "Proverbios 17:1"),
            BibleVerse(text: "El amigo ama en todo tiempo, y el hermano nace para tiempo de angustia.", reference: "Proverbios 17:17"),
            BibleVerse(text: "El corazón alegre constituye buen remedio; mas el espíritu triste seca los huesos.", reference: "Proverbios 17:22"),
            BibleVerse(text: "Las palabras agradables son panal de miel, dulzura al alma y salud para los huesos.", reference: "Proverbios 16:24"),
            BibleVerse(text: "El que guarda la ley es hijo prudente.", reference: "Proverbios 28:7"),
            BibleVerse(text: "La bendición de Jehová es la que enriquece, y no añade tristeza con ella.", reference: "Proverbios 10:22"),
            BibleVerse(text: "En la multitud de palabras no falta pecado; mas el que refrena sus labios es prudente.", reference: "Proverbios 10:19"),
            BibleVerse(text: "El justo florecerá como la rama verde.", reference: "Proverbios 11:28"),
            BibleVerse(text: "El fruto del justo es árbol de vida.", reference: "Proverbios 11:30"),
            BibleVerse(text: "La integridad de los rectos los encaminará.", reference: "Proverbios 11:3"),
            BibleVerse(text: "La esperanza diferida enferma el corazón; pero el deseo cumplido es árbol de vida.", reference: "Proverbios 13:12"),
            BibleVerse(text: "El que guarda su boca guarda su alma; mas el que mucho abre sus labios tendrá calamidad.", reference: "Proverbios 13:3"),
        

    ]

    static func randomVerse() -> BibleVerse {
        all.randomElement() ?? BibleVerse(text: "Dios es amor", reference: "1 Juan 4:8")
    }
}
    
