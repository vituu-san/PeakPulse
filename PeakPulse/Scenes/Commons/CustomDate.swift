//
//  CustomDate.swift
//  PeakPulse
//
//  Created by Vitor Costa on 25/09/23.
//

import Foundation

class CustomDate: ObservableObject {
    var value: String = ""

    init() {
        refreshDate()
    }

    func refreshDate() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMM d, yyyy"
        value = dateFormatter.string(from: .now).capitalized
    }
}
