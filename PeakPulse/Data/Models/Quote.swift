//
//  Phrase.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import Foundation
import RealmSwift

public final class Quote: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var phrase: String = ""
    @Persisted var author: String = ""
    @Persisted var favorite: Bool = false

    convenience init(phrase: String, author: String, favorite: Bool = false) {
        self.init()
        self.phrase = phrase
        self.author = author
        self.favorite = favorite
    }
}

public extension Quote {
    static let placeholder: Quote = .init(phrase: "A coisa mais cara é transformar um cliente insatisfeito em satisfeito.",
                                          author: "Jan Carlzon")
}
