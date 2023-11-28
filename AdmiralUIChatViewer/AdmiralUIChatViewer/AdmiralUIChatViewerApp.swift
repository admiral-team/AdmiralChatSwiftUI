//
//  AdmiralUIChatViewerApp.swift
//  AdmiralUIChatViewer
//
//  Created by Leonardo Vapagini on 28.11.2023.
//

import AdmiralTheme
import SwiftUI

@main
struct AdmiralUIChatViewerApp: App {
    init() {
        AdmiralTheme.Appearance.prepare()
    }
    
    var body: some Scene {
        WindowGroup {
            ChatSwiftUIView()
        }
    }
}
