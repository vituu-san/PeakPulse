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

    public enum Buttons {
        static let width: CGFloat = 80
        static let height: CGFloat = 55

        public enum Container {
            static let width: CGFloat = 30
            static let height: CGFloat = 25
        }
    }

    public enum CornerRadius {
        static let small: CGFloat = 12
        static let medium: CGFloat = 24
        static let big: CGFloat = 36
    }
}

public typealias Space = Values.Spacing
public typealias Opacity = Values.Opacity
public typealias Buttons = Values.Buttons
public typealias CornerRadius = Values.CornerRadius
