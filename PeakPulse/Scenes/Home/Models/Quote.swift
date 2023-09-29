//
//  Phrase.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import Foundation
import RealmSwift

public final class Quote: Object, ObjectKeyIdentifiable, Codable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var quote: String = ""
    @Persisted var author: String = ""
    @Persisted var category: String = ""
    @Persisted var favorite: Bool = false

    convenience init(quote: String, author: String, category: String, favorite: Bool = false) {
        self.init()
        self.quote = quote
        self.author = author
        self.category = category
        self.favorite = favorite
    }
}

public extension Quote {
    static let placeholder: Quote = .init(quote: "A coisa mais cara é transformar um cliente insatisfeito em satisfeito.",
                                          author: "Jan Carlzon",
                                          category: "vida")
}
