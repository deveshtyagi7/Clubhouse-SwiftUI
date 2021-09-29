//
//  ClubhouseApp.swift
//  Clubhouse
//
//  Created by Devesh Tyagi on 27/09/21.
//

import SwiftUI

@main
struct ClubhouseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(RoomViewModel())
        }
    }
}
