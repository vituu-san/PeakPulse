//
//  View.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import SwiftUI

enum Orientation {
    case horizontal
    case vertical
}

extension View {
    func space(_ orientation: Orientation, _ size: CGFloat) -> some View {
        switch orientation {
        case .horizontal:
            return Spacer()
                .frame(width: size)
        case .vertical:
            return Spacer()
                .frame(height: size)
        }
    }

    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
