//
//  DateContainer.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import SwiftUI

private enum Size {
    static let width: CGFloat = 250
    static let height: CGFloat = 70
}

struct DateView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: Size.width, height: Size.height)
                .foregroundColor(.white)
                .opacity(Opacity.middle)
                .cornerRadius(CornerRadius.big)

            Text("\(dateFormatted())")
                .font(.callout)
        }
    }

    private func dateFormatted() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMM d, yyyy"
        return dateFormatter.string(from: .now)
    }
}

struct DateContainer_Previews: PreviewProvider {
    static var previews: some View {
        DateView()
            .background(.red)
    }
}
