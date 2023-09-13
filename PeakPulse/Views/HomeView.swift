//
//  HomeView.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import SwiftUI

protocol HomeViewing: View {
    var viewModel: any HomeViewModeling { get }
}

struct HomeView: View, HomeViewing {
    @Environment(\.scenePhase) var scenePhase

    @State var viewModel: any HomeViewModeling

    var body: some View {
        ZStack {
            Rectangle()
                .fill(.clear)

            VStack {
                HStack {
                    DateView(viewModel.date)
                    Spacer()
                }

                Spacer()
                QuoteView(quote: viewModel.quote)
                Spacer()
                HStack(spacing: Space.small) {
                    LikeButtonView(quote: viewModel.quote, delegate: self)
                    ShareButtonView(quote: viewModel.quote)
                }
            }
            .padding()
        }
        .background {
            Image("\(viewModel.backgroundImage)")
                .opacity(Opacity.strong)
        }
    }
}

extension HomeView: LikeButtonDelegate {
    func didTap(on quote: Quote) {
        viewModel.toggleFavorite(quote)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}
