//
//  ShareButtonView.swift
//  PeakPulse
//
//  Created by Vitor Costa on 30/08/23.
//

import SwiftUI

struct ShareButtonView: View {
    var didTap: (() -> Void)?

    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: Buttons.width, height: Buttons.height)
                .foregroundColor(.white)
                .opacity(Opacity.middle)
                .cornerRadius(CornerRadius.big, corners: [.topRight, .bottomRight])

            Image(systemName: "arrowshape.turn.up.right")
                .resizable()
                .frame(width: Buttons.Container.width, height: Buttons.Container.height)
        }
        .frame(width: Buttons.width, height: Buttons.height)
        .onTapGesture {
            didTap?()
        }
    }
}

struct ShareButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ShareButtonView()
            .background(.red)
    }
}
