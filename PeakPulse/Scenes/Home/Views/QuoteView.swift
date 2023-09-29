//
//  QuoteView.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import SwiftUI

struct QuoteView: View {
    @ObservedObject var quote: Quote

    var body: some View {
        ZStack {
            Circle()
                .fill(.white)
                .opacity(Opacity.middle)

            VStack(spacing: Space.medium) {

                Text(quote.quote)
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
