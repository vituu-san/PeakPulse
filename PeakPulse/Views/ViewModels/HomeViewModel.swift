//
//  HomeViewModel.swift
//  PeakPulse
//
//  Created by Vitor Costa on 31/08/23.
//

import SwiftUI

protocol HomeViewModeling: ViewModeling {
    var quote: Quote { get }
    var date: CustomDate { get }
    var backgroundImage: Int { get }

    func toggleFavorite(_ quote: Quote)
}

class HomeViewModel: HomeViewModeling {
    private let databaseManager = QuoteDatabaseManager()
    private var allQuotes: [Quote] = []

    var backgroundImage: Int = Int.random(in: 1...3)
    
    @Published var quote: Quote = .placeholder
    @Published var date: CustomDate = .init()

    init() {
//        addSomeData()
        refreshData()
        quote = allQuotes.randomElement() ?? .placeholder
    }

    // MARK: - Protocol methods
    func toggleFavorite(_ quote: Quote) {
        do {
            try databaseManager.toggleFavorite(quote)
        } catch let error {
            // TODO: show error
            print("Could not connect with database! Reason: \(error.localizedDescription)")
        }

        refreshData()
    }

    func viewDidAppear() {
        date.refreshDate()
    }

    // MARK: - Private methods
    private func refreshData() {
        do {
            allQuotes = try Array(databaseManager.all(of: Quote.self))
        } catch let error {
            // TODO: show error
            print("Could not connect with database! Reason: \(error.localizedDescription)")
        }
    }

    private func addSomeData() {
        do {
            try databaseManager.create(Quote(phrase: "Lembre sempre que a sua vontade de triunfar é mais importante do que qualquer outra coisa.",
                                             author: "Abraham Lincoln"))
            try databaseManager.create(Quote(phrase: "Quando você contrata pessoas mais inteligentes do que você, prova que é mais inteligente do que elas.",
                                             author: "R. H. Grant"))
            try databaseManager.create(Quote(phrase: "O talento vence jogos, mas só o trabalho em equipe vence campeonatos.",
                                             author: "Michael Jordan"))
        } catch let error {
            // TODO: show error
            print("Could not connect with database! Reason: \(error.localizedDescription)")
        }
    }
}
