//
//  LikeButtonView.swift
//  PeakPulse
//
//  Created by Vitor Costa on 30/08/23.
//

import SwiftUI

private struct Size {
    enum Container {
        static let width: CGFloat = 80
        static let height: CGFloat = 55
    }
}

protocol LikeButtonDelegate {
    func didTap(on quote: Quote)
}

struct LikeButtonView: View {
    @ObservedObject private var quote: Quote

    private var delegate: LikeButtonDelegate?

    init(quote: Quote, delegate: LikeButtonDelegate? = nil) {
        self.quote = quote
        self.delegate = delegate
    }

    var body: some View {
        var imageName = $quote.favorite.wrappedValue ? "heart.fill" : "heart"

        ZStack {
            Rectangle()
                .frame(width: Buttons.width, height: Buttons.height)
                .foregroundColor(.white)
                .opacity(Opacity.middle)
                .cornerRadius(CornerRadius.big, corners: [.topLeft, .bottomLeft])

            Image(systemName: imageName)
                .resizable()
                .frame(width: Buttons.Container.width, height: Buttons.Container.height)
                .animation(.default, value: imageName)
        }
        .frame(width: Buttons.width, height: Buttons.height)
        .onTapGesture {
            withAnimation {
                imageName = $quote.favorite.wrappedValue ? "heart.fill" : "heart"
            }

            delegate?.didTap(on: quote)
        }
    }
}

struct LikeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LikeButtonView(quote: .placeholder, delegate: nil)
            .background(.red)
    }
}
