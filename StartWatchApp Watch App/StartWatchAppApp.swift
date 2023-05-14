//
//  StartWatchAppApp.swift
//  StartWatchApp Watch App
//
//  Created by Bo Zhang on 5/14/23.
//

import SwiftUI
import HealthKit

@main
struct StartWatchApp_Watch_AppApp: App {
    @WKApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, ObservableObject, WKApplicationDelegate {
    @Published var status = "N/A"
    
    func handle(_ workoutConfiguration: HKWorkoutConfiguration) {
        print("config is \(workoutConfiguration)")
        status = "received configuration"
    }
}
