//
//  NavigationManager.swift
//  Flymetomusic
//
//  Created by Sedat Budak on 12.12.2024.
//

import Foundation
import SwiftUICore

class NavigationManager: ObservableObject {
    @Published var path: [String] = []

    func routeMap(to route: String) -> AnyView {
            switch route {
            case Routes.home:
                return AnyView(Home())
            case Routes.detail:
                return AnyView(Detail())
            case Routes.gallery:
                return AnyView(Gallery())
            default:
                return AnyView(Text("Unknown Route"))
            }
        }
    
    
    func navigate(to route: String) {
        
        // TODO: Parametre olarak route yerine appUrl gelecek.
        //appUrl'in split edileceği ve routes'tan doğru route'un belirleneceği yer !
        
        path.append(route)
    }
    
    func back() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }
    
    func popToPop() {
        guard !path.isEmpty else { return }
        path.removeAll()
    }
}
