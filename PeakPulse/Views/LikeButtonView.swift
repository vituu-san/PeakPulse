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

struct LikeButtonView: View {
    var didTap: (() -> Void)?

    @State private var isLiked = false
    @State private var imageName = "heart"
    @State private var color = Color.black

    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: Buttons.width, height: Buttons.height)
                .foregroundColor(.white)
                .opacity(Opacity.middle)
                .cornerRadius(CornerRadius.big, corners: [.topLeft, .bottomLeft])

            Image(systemName: imageName)
                .resizable()
                .frame(width: Buttons.Container.width, height: Buttons.Container.height)
                .foregroundColor(color)
        }
        .frame(width: Buttons.width, height: Buttons.height)
        .onTapGesture {
            withAnimation {
                isLiked.toggle()
                imageName = isLiked ? "heart.fill" : "heart"
                color = isLiked ? .red : .black
            }
            didTap?()
        }
    }

    private func image() {

    }
}

struct LikeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LikeButtonView()
            .background(.red)
    }
}
