//
//  ContentView.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // MARK: - Forms
        ZStack {
            Rectangle()
                .fill(.clear)

            QuoteContainer(quote: .placeholder)
        }
        // MARK: - Background
        .background {
            Image("1")
                .opacity(Opacity.strong)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
