//
//  QuoteContainer.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import SwiftUI

struct QuoteContainer: View {
    private let quote: Quote

    init(quote: Quote) {
        self.quote = quote
    }

    var body: some View {
        ZStack {
            Circle()
                .fill(.white)
                .opacity(Opacity.middle)

            VStack {
                space(Space.big)

                Text(quote.phrase)
                    .font(.title)

                space(Space.medium)

                Text("by \(quote.author)")
                    .font(.callout)
                    .italic()
            }
            .multilineTextAlignment(.center)
        }
        .frame(alignment: .center)
        .padding(Space.medium)
    }
}

struct PhraseContainer_Previews: PreviewProvider {
    static var previews: some View {
        QuoteContainer(quote: .placeholder)
            .background(.red)
    }
}
