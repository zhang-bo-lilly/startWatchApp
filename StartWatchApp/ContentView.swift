//
//  ContentView.swift
//  StartWatchApp
//
//  Created by Bo Zhang on 5/14/23.
//

import SwiftUI
import HealthKit

struct ContentView: View {
    @EnvironmentObject private var manager: Manager
    
    var body: some View {
        VStack {
            Button {
                start()
            } label: {
                Text("Start workout")
            }

        }
        .padding()
    }
    
    func start() {
        let configuration = HKWorkoutConfiguration()
        configuration.activityType = .other
        configuration.locationType = .indoor
        
        manager.healthStore.startWatchApp(with: configuration) { success, error in
            if success {
                print("started watch app")
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Manager())
    }
}
