//
//  ViewModeling.swift
//  PeakPulse
//
//  Created by Vitor Costa on 13/09/23.
//

import SwiftUI

protocol ViewModeling: ObservableObject {
    func manage(_ scenePhase: ScenePhase)
    func viewDidAppear()
    func viewDidDisappear()
}

extension ViewModeling {
    func manage(_ scenePhase: ScenePhase) {
        switch scenePhase {
        case .active:
            AppManager.shared.isActive = true
            viewDidAppear()
        case .background:
            AppManager.shared.isActive = false
            viewDidDisappear()
        case .inactive:
            AppManager.shared.isActive = AppManager.shared.isActive ? false : true
            if AppManager.shared.isActive {
                viewDidAppear()
            } else {
                viewDidDisappear()
            }
        @unknown default: break
        }
    }

    func viewDidAppear() { }
    func viewDidDisappear() { }
}
