//
//  AddView.swift
//  Allocate
//
//  Created by Charles Duong on 5/22/25.
//

import SwiftUI

struct AddView: View {
    @State private var amount: String = ""
    @State private var type: String = ""
    @State private var addCategory: String = ""
    @State private var notes: String = ""
    @EnvironmentObject private var currentView: ViewManager
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Group {
                            switch currentView.currentView {
                                case .addAsset:
                                    Text("Add Asset")
                                case .addDeposit:
                                    Text("Add Deposit")
                                case .addPurchase:
                                    Text("Add Purchase")
                                case .addWishlist:
                                    Text("Add Wishlist")
                                case .assets:
                                    Text("")
                                case .records:
                                    Text("")
                                case .summary:
                                    Text("")
                                case .wishlist:
                                    Text("")
                            }
                        }
                            .font(.largeTitle)
                            .bold()
                    }
                    Spacer()
                }
            }
            .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 15))
            ZStack {
                ScrollView {
                    HStack {
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Amount")
                                        .font(.largeTitle)
                                        .bold()
                                }
                                Spacer()
                            }
                            TextField("", text: $amount)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.gray, lineWidth: 1)
                                    
                                )
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                    HStack {
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Type of Transaction")
                                        .font(.largeTitle)
                                        .bold()
                                }
                                Spacer()
                            }
                            TextField("", text: $type)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.gray, lineWidth: 1)
                                    
                                )
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                    HStack {
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Category")
                                        .font(.largeTitle)
                                        .bold()
                                }
                                Spacer()
                            }
                            Menu("Categories") {
                                Button("Assets") {
                                    currentView.currentView = .assets
                                }
                                .disabled(currentView.currentView == .assets)
                                Button("Savings Target") {
                                    currentView.currentView = .wishlist
                                }
                                .disabled(currentView.currentView == .wishlist)
                                Button("Summary") {
                                    currentView.currentView = .summary
                                }
                                .disabled(currentView.currentView == .summary)
                            }
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.gray, lineWidth: 1)
                                    
                                )
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                    HStack {
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Add a New Category")
                                        .font(.largeTitle)
                                        .bold()
                                }
                                Spacer()
                            }
                            TextField("Username", text: $addCategory)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.gray, lineWidth: 1)
                                    
                                )
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                    HStack {
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Notes")
                                        .font(.largeTitle)
                                        .bold()
                                }
                                Spacer()
                            }
                            TextField("", text: $notes)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.gray, lineWidth: 1)
                                    
                                )
                                
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                }
                VStack {
                    ButtonView()
                }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            }
        }
    }
}

#Preview {
    AddView()
        .environmentObject(ViewManager())
}
