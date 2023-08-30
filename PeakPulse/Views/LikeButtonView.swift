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

    var body: some View {
        ZStack {
            Button("") {
                didTap?()
                print("Button tapped!")
            }
            .background {
                ZStack {
                    Rectangle()
                        .frame(width: Buttons.width, height: Buttons.height)
                        .foregroundColor(.white)
                        .opacity(Opacity.middle)
                        .cornerRadius(CornerRadius.big, corners: [.topLeft, .bottomLeft])

                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: Buttons.Container.width, height: Buttons.Container.height)
                }
            }
        }
        .frame(width: Buttons.width, height: Buttons.height)
    }
}

struct LikeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LikeButtonView()
            .background(.red)
    }
}
