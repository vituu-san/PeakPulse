//
//  HomeView.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import SwiftUI

protocol Viewing: View {
    var scenePhase: ScenePhase { get }
    var viewModel: any ViewModeling { get }
}

protocol HomeViewing: View {
    var viewModel: any HomeViewModeling { get }
}

struct HomeView: HomeViewing {
    @Environment(\.scenePhase) var scenePhase

    @State var viewModel: any HomeViewModeling

    var body: some View {
        ZStack {
            Rectangle()
                .fill(.clear)

            VStack {
                HStack {
                    DateView(date: viewModel.date)
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
        .onChange(of: scenePhase) { newPhase in
            viewModel.manage(newPhase)
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
