//
//  Values.swift
//  PeakPulse
//
//  Created by Vitor Costa on 29/08/23.
//

import Foundation

public struct Values {
    public enum Spacing {
        static let small: CGFloat = 12
        static let medium: CGFloat = 24
        static let big: CGFloat = 36
    }

    public enum Opacity {
        static let weak: CGFloat = 0.3
        static let middle: CGFloat = 0.5
        static let strong: CGFloat = 0.7
    }
}

public typealias Space = Values.Spacing
public typealias Opacity = Values.Opacity
