//
//  NavigationRouter.swift
//  Introduction to NavigationStack
//
//  Created by Tunde Adegoroye on 07/02/2023.
//

import Foundation
import SwiftUI

final class NavigationRouter: ObservableObject {
    
    @Published var routes = [Route]()
    
    func push(to screen: Route) {
        routes.append(screen)
    }
    
    func goBack() {
        _ = routes.popLast()
    }
    
    func reset() {
        routes = []
    }
}
