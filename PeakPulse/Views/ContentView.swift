//
//  ContentView.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.clear)

            VStack {
                HStack {
                    DateView()
                    Spacer()
                }

                QuoteView(quote: .placeholder)

                Spacer()

                LikeButtonView()
            }
        }
        .background {
            Image("3")
                .opacity(Opacity.strong)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
