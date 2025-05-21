//
//  StockStyleView.swift
//  Allocate
//
//  Created by Charles Duong on 5/21/25.
//

import SwiftUI
import Charts

struct StockPrice: Identifiable {
    let id = UUID()
    let date: Date
    let price: Int
}

struct StockStyleView: View {
    @State private var stockPrices: [StockPrice] = []
    var startingOpacity: Double = 1
    
    private var areaBackground: Gradient {
        return Gradient(colors: [.green.opacity(startingOpacity), .green.opacity(0.1)])
    }

    var body: some View {
        VStack {
            Chart(stockPrices) {
                LineMark(
                    x: .value("Date", $0.date),
                    y: .value("Price", $0.price)
                )
                .foregroundStyle(.green)
                AreaMark(
                  x: .value("Month", $0.date),
                  y: .value("Amount", $0.price)
                )
                .foregroundStyle(areaBackground)
            }
            .chartXAxis {
                AxisMarks { _ in
                }
            }
            .chartYAxis {
                AxisMarks { _ in
                }
            }
            .frame(height: 300)
        }
        .overlay( Divider()
                   .frame(maxWidth: .infinity, maxHeight:1)
                   .background(Color.gray.opacity(0.25)), alignment: .bottom)
        .onAppear {
            generateMockData()
            dump(stockPrices)
        }
    }

    private func generateMockData() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"

        let dates = [
            "2024-01-01",
            "2024-01-02",
            "2024-01-03",
            "2024-01-04",
            "2024-01-05",
            "2024-01-06"
        ].compactMap { formatter.date(from: $0) }

        let prices = [100, 105, 102, 110, 108, 115]

        stockPrices = zip(dates, prices).map { StockPrice(date: $0.0, price: $0.1) }
    }
}

#Preview {
    StockStyleView()
}
