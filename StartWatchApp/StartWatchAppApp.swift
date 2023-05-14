//
//  StartWatchAppApp.swift
//  StartWatchApp
//
//  Created by Bo Zhang on 5/14/23.
//

import SwiftUI
import HealthKit

@main
struct StartWatchAppApp: App {
    @StateObject private var manager = Manager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(manager)
        }
    }
}

class Manager: NSObject, ObservableObject {
    let healthStore = HKHealthStore()
}
