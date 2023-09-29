//
//  Model.swift
//  MuslimGate
//
//  Created by M.M.Z on 10/08/2023.
//

import Foundation

enum TabbedItems: Int, CaseIterable {
    case home = 0
    case favourite
    case settings
    
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .favourite:
            return "Favourite"
        case .settings:
            return "Settings"
        }
    }
    
    var iconName: String {
        switch self {
        case .home:
            return "house.fill"
        case .favourite:
            return "heart.fill"
        case .settings:
            return "gearshape.fill"
        }
    }
}
//
