//
//  QuoteDatabaseManager.swift
//  PeakPulse
//
//  Created by Vitor Costa on 01/09/23.
//

import RealmSwift

protocol QuoteDatabase: Database {
    func toggleFavorite(_ quote: Quote) throws
}

class QuoteDatabaseManager: QuoteDatabase {
    func toggleFavorite(_ quote: Quote) throws {
        let realm = try Realm()
        let objects = try all(of: Quote.self)
        let object = objects.where { $0._id == quote._id }
        try realm.write { object.first?.favorite.toggle() }
    }
}
