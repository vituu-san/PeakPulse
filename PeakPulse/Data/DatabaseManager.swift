//
//  DatabaseManager.swift
//  PeakPulse
//
//  Created by Vitor Costa on 31/08/23.
//

import RealmSwift

protocol Database {
    func create<T: Object>(_ object: T) throws
    func all<T: Object>(of object: T.Type) throws -> Results<T>
}

extension Database {
    func create<T: Object>(_ object: T) throws {
        let realm = try Realm()
        try realm.write { realm.add(object) }
    }

    func all<T: Object>(of object: T.Type) throws -> Results<T> {
        let realm = try Realm()
//        print("User Realm User file location: \(realm.configuration.fileURL!.path)")
        return realm.objects(T.self)
    }
}
