//
//  View.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import SwiftUI

extension View {
    func space(_ size: CGFloat) -> some View {
        Spacer()
            .frame(height: size)
    }

    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
