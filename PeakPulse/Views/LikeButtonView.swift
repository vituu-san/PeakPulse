//
//  LikeButtonView.swift
//  PeakPulse
//
//  Created by Vitor Costa on 30/08/23.
//

import SwiftUI

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
                        .frame(width: 80, height: 55)
                        .foregroundColor(.white)
                        .opacity(Opacity.middle)
                        .cornerRadius(40, corners: [.topLeft, .bottomLeft])

                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 30, height: 25)
                }
            }
            .frame(width: 80, height: 55)
        }
        .padding(Space.medium)
    }
}

struct LikeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LikeButtonView()
            .background(.red)
    }
}
