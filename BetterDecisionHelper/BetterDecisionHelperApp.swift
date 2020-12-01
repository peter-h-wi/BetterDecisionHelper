//
//  BetterDecisionHelperApp.swift
//  BetterDecisionHelper
//
//  Created by Peter Wi on 12/1/20.
//

import SwiftUI

@main
struct BetterDecisionHelperApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
