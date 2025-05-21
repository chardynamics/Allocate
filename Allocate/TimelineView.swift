//
//  TimelineView.swift
//  Allocate
//
//  Created by Charles Duong on 5/21/25.
//

import SwiftUI

struct TimelineView: View {
    @State var timeLine: String = "1M"
    var body: some View {
        Button("1D") {
            timeLine = "1D"
        }
            .buttonStyle(.bordered)
            .tint(.gray)
            .controlSize(.mini)
            .disabled(timeLine == "1D")
        Button("1W") {
            timeLine = "1W"
        }
            .buttonStyle(.bordered)
            .tint(.gray)
            .controlSize(.mini)
            .disabled(timeLine == "1W")
        Button("1M") {
            timeLine = "1M"
        }
            .buttonStyle(.bordered)
            .tint(.gray)
            .controlSize(.mini)
            .disabled(timeLine == "1M")
        Button("3M") {
            timeLine = "3M"
        }
            .buttonStyle(.bordered)
            .tint(.gray)
            .controlSize(.mini)
            .disabled(timeLine == "3M")
        Button("6M") {
            timeLine = "6M"
        }
            .buttonStyle(.bordered)
            .tint(.gray)
            .controlSize(.mini)
            .disabled(timeLine == "6M")
        Button("1Y") {
            timeLine = "1Y"
        }
            .buttonStyle(.bordered)
            .tint(.gray)
            .controlSize(.mini)
            .disabled(timeLine == "1Y")
        Button("3Y") {
            timeLine = "3Y"
        }
            .buttonStyle(.bordered)
            .tint(.gray)
            .controlSize(.mini)
            .disabled(timeLine == "3Y")
        Button("All") {
            timeLine = "All"
        }
            .buttonStyle(.bordered)
            .tint(.gray)
            .controlSize(.mini)
            .disabled(timeLine == "All")
    }
}

#Preview {
    TimelineView()
}
