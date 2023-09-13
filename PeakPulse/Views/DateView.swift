//
//  DateView.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import SwiftUI

struct DateView: View {
    private var date: String

    init(_ date: String) {
        self.date = date
    }

    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: Values.Views.Date.width, height: Values.Views.Date.height)
                .foregroundColor(.white)
                .opacity(Opacity.middle)
                .cornerRadius(CornerRadius.big)

            Text("\(date)")
                .font(.callout)
        }
    }
}

struct DateContainer_Previews: PreviewProvider {
    static var previews: some View {
        DateView("\(Date.now.description)")
            .background(.red)
    }
}
