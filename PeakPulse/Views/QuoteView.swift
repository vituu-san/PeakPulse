//
//  QuoteView.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import SwiftUI

struct QuoteView: View {
    @ObservedObject private var quote: Quote

    init(quote: Quote?) {
        self.quote = quote ?? .placeholder
    }

    var body: some View {
        ZStack {
            Circle()
                .fill(.white)
                .opacity(Opacity.middle)

            VStack(spacing: Space.medium) {

                Text(quote.phrase)
                    .font(.title)

                Text("by \(quote.author)")
                    .font(.callout)
                    .italic()
            }
            .multilineTextAlignment(.center)
            .padding(.horizontal)
        }
        .frame(alignment: .center)
    }
}

struct PhraseContainer_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView(quote: .placeholder)
            .background(.red)
    }
}
