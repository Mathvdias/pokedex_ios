//
//  pokedex_swiftApp.swift
//  pokedex_swift
//
//  Created by Matheus on 14/12/22.
//

import SwiftUI

@main
struct pokedex_swiftApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
