//
//  DateContainer.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import SwiftUI

struct DateView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 250, height: 70)
                .foregroundColor(.white)
                .opacity(Opacity.middle)
                .cornerRadius(40)

            Text("\(dateFormatted())")
                .font(.callout)
        }
        .padding(Space.medium)
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
