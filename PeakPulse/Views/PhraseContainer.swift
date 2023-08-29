//
//  QuoteContainer.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import SwiftUI

struct QuoteContainer: View {
    private let phrase: Quote

    init(phrase: Quote) {
        self.phrase = Quote
    }

    var body: some View {
        ZStack {
            Circle()
                .fill(.white)
                .opacity(Opacity.middle)

            VStack {
                space(Space.big)

                Text(phrase.phrase)
                    .font(.title)

                space(Space.medium)

                Text("by Carl Sandburg")
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
        PhraseContainer()
            .background(.red)
    }
}
