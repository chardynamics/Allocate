//
//  WishlistView.swift
//  Allocate
//
//  Created by Charles Duong on 5/21/25.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        Text("Hello, World!")
        VStack {
            ButtonView()
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
    }
}

#Preview {
    WishlistView()
        .environmentObject(ViewManager())
}
