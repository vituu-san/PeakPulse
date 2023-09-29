//
//  ContentView.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import SwiftUI

protocol QuoteViewing: View {
    var viewModel: any QuoteViewModeling { get }
}

struct HomeView: View, QuoteViewing {
    @State var viewModel: any QuoteViewModeling

    init(viewModel: any QuoteViewModeling) {
        self.viewModel = viewModel
    }

    var body: some View {
        ZStack {
            Rectangle()
                .fill(.clear)

            VStack {
                HStack {
                    DateView()
                    Spacer()
                }

                Spacer()
                QuoteView(quote: $viewModel.allQuotes.wrappedValue.randomElement() ?? .placeholder)
                Spacer()
                HStack(spacing: Space.small) {
                    LikeButtonView()
                    ShareButtonView()
                }
            }
            .padding()
        }
        .background {
            Image("3")
                .opacity(Opacity.strong)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: QuoteViewModel())
    }
}
