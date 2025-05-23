//
//  AllocateApp.swift
//  Allocate
//
//  Created by Charles Duong on 5/21/25.
//

import SwiftUI

@main
struct AllocateApp: App {
    @StateObject private var viewManager = ViewManager()
    var body: some Scene {
        WindowGroup {
            Group {
                switch viewManager.currentView {
                    case .summary:
                        ContentView()
                    case .wishlist:
                        WishlistView()
                    case .assets:
                        AssetsView()
                    case .addAsset:
                        AddView()
                    case .addDeposit:
                        AddView()
                    case .addPurchase:
                        AddView()
                    case .addWishlist:
                        AddView()
                    case .records:
                        AddView()
                }
            }
            .environmentObject(viewManager)
        }
    }
}
