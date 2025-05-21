//
//  ContentView.swift
//  Allocate
//
//  Created by Charles Duong on 5/21/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var currentView: ViewManager
    var body: some View {
        VStack {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Net Worth")
                            .font(.headline)
                        Text("$XXXX.XX").foregroundStyle(.green)
                            .font(.largeTitle)
                            .bold()
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("Dues (incl. monthly):")
                            .font(.subheadline)
                        Text("$XXXX.XX").foregroundStyle(.red)
                            .font(.headline)
                            .bold()
                        Text("Assets:")
                            .font(.subheadline)
                        Text("$XXXX.XX")
                            .font(.headline)
                            .bold()
                    }
                }
            }
            .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 15))
            ZStack {
                ScrollView {
                    StockStyleView()
                    HStack {
                        TimelineView()
                    }
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                    HStack {
                        VStack {
                            HStack {
                                Text("Assets")
                                    .font(.largeTitle)
                                    .bold()
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Revenue")
                                        .font(.title2)
                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("$XXX.XX").foregroundStyle(.green)
                                        .font(.largeTitle)
                                        .bold()
                                }
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Job")
                                        .font(.body)
                                }
                                VStack(alignment: .leading) {
                                    Text("$XXX.XX")
                                        .font(.headline)
                                        .bold()
                                }
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Dividends")
                                        .font(.body)
                                }
                                VStack(alignment: .leading) {
                                    Text("$XXX.XX")
                                        .font(.headline)
                                        .bold()
                                }
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Liquidity")
                                        .font(.title2)
                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("$XXXX.XX").foregroundStyle(.green)
                                        .font(.largeTitle)
                                        .bold()
                                }
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Savings")
                                        .font(.body)
                                }
                                VStack(alignment: .leading) {
                                    Text("$XXX.XX")
                                        .font(.headline)
                                        .bold()
                                }
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Money Market Funds")
                                        .font(.body)
                                }
                                VStack(alignment: .leading) {
                                    Text("$XXX.XX")
                                        .font(.headline)
                                        .bold()
                                }
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Certificate of Deposits")
                                        .font(.body)
                                }
                                VStack(alignment: .leading) {
                                    Text("$XXX.XX")
                                        .font(.headline)
                                        .bold()
                                }
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Bonds")
                                        .font(.body)
                                }
                                VStack(alignment: .leading) {
                                    Text("$XXX.XX")
                                        .font(.headline)
                                        .bold()
                                }
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Investments")
                                        .font(.title2)
                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("$XXX.XX").foregroundStyle(.green)
                                        .font(.largeTitle)
                                        .bold()
                                }
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Stocks")
                                        .font(.body)
                                }
                                VStack(alignment: .leading) {
                                    Text("$XXX.XX")
                                        .font(.headline)
                                        .bold()
                                }
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Card Collection")
                                        .font(.body)
                                }
                                VStack(alignment: .leading) {
                                    Text("$XXX.XX")
                                        .font(.headline)
                                        .bold()
                                }
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Car")
                                        .font(.body)
                                }
                                VStack(alignment: .leading) {
                                    Text("$XXX.XX")
                                        .font(.headline)
                                        .bold()
                                }
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Miscellanous")
                                        .font(.body)
                                }
                                VStack(alignment: .leading) {
                                    Text("$XXX.XX")
                                        .font(.headline)
                                        .bold()
                                }
                                Spacer()
                            }
                        }
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1)
                        )
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                    HStack {
                        VStack {
                            HStack {
                                Text("Liabilities")
                                    .font(.largeTitle)
                                    .bold()
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Expenditures")
                                        .font(.title2)
                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("$XXX.XX").foregroundStyle(.red)
                                        .font(.largeTitle)
                                        .bold()
                                }
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Subscriptions")
                                        .font(.body)
                                }
                                VStack(alignment: .leading) {
                                    Text("$XXX.XX")
                                        .font(.headline)
                                        .bold()
                                }
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Gas")
                                        .font(.body)
                                }
                                VStack(alignment: .leading) {
                                    Text("$XXX.XX")
                                        .font(.headline)
                                        .bold()
                                }
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Food")
                                        .font(.body)
                                }
                                VStack(alignment: .leading) {
                                    Text("$XXX.XX")
                                        .font(.headline)
                                        .bold()
                                }
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Outstanding Balances")
                                        .font(.body)
                                }
                                VStack(alignment: .leading) {
                                    Text("$XXX.XX")
                                        .font(.headline)
                                        .bold()
                                }
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Miscellanous")
                                        .font(.body)
                                }
                                VStack(alignment: .leading) {
                                    Text("$XXX.XX")
                                        .font(.headline)
                                        .bold()
                                }
                                Spacer()
                            }
                        }
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1)
                        )
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                }
                VStack {
                    ButtonView()
                }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            }
        }
        Spacer()
    }
}

#Preview {
    ContentView()
        .environmentObject(ViewManager())
}
