//
//  ViewManager.swift
//  Allocate
//
//  Created by Charles Duong on 5/21/25.
//

import Foundation

class ViewManager: ObservableObject {
    @Published var currentView: managerViews = .summary
    
    enum managerViews {
        case summary
        case wishlist
        case assets
        case records
        case addWishlist
        case addAsset
        case addPurchase
        case addDeposit
    }
}
