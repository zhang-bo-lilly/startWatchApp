//
//  ContentView.swift
//  StartWatchApp Watch App
//
//  Created by Bo Zhang on 5/14/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appDelegate: AppDelegate
    
    var body: some View {
        VStack {
            Text(appDelegate.status)
        }
        .padding()
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
