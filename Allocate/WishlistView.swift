//
//  WishlistView.swift
//  Allocate
//
//  Created by Charles Duong on 5/21/25.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Realized Savings")
                            .font(.headline)
                        Text("$XXXX.XX").foregroundStyle(.red)
                            .font(.largeTitle)
                            .bold()
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("Savings Target")
                            .font(.subheadline)
                        Text("$XXXX.XX")
                            .font(.headline)
                            .bold()
                        Text("Savings Balance")
                            .font(.subheadline)
                        Text("$XXXX.XX")
                            .font(.headline)
                            .bold()
                    }
                }
                HStack {
                    ProgressView(value: 0.0)
                        .progressViewStyle(LinearProgressViewStyle())
                }
            }
            .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 15))
            ZStack {
                ScrollView {
                    HStack {
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Balances")
                                            .font(.largeTitle)
                                            .bold()
                                        Spacer()
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
                                    Text("Parents")
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
                                    Text("Sister")
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
                                    Text("Friends")
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
                                Text("Emergency Funds")
                                    .font(.largeTitle)
                                    .bold()
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Checking Account Minimums")
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
                                    Text("Glasses")
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
                                    Text("iPhone")
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
                                    Text("Macbook")
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
                                    Text("Apple Watch")
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
                                Text("Wishlist Items")
                                    .font(.largeTitle)
                                    .bold()
                                Spacer()
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Pokémon")
                                        .font(.title2)
                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("$XXX.XX")
                                        .font(.largeTitle)
                                        .bold()
                                }
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Shrouded Fable Elite Trainer Box")
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
                                    Text("Charizard ex Super-Premium Collection")
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
                                    Text("Technology")
                                        .font(.title2)
                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("$XXXX.XX")
                                        .font(.largeTitle)
                                        .bold()
                                }
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Nintendo Switch 2")
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
                                    Text("Steam Deck")
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
                                    Text("New Nintendo 3DS XL")
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
                                    Text("iPhone 16 Pro Max")
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
                                    Text("Other")
                                        .font(.title2)
                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("$XXX.XX")
                                        .font(.largeTitle)
                                        .bold()
                                }
                            }
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Patagonia Retro X Fleece")
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
                                    Text("Nike Tiempo Legend 10 Elite")
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
    }
}

#Preview {
    WishlistView()
        .environmentObject(ViewManager())
}
