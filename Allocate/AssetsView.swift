//
//  AssetsView.swift
//  Allocate
//
//  Created by Charles Duong on 5/22/25.
//

import SwiftUI

struct AssetsView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("Assets")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                }
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
                ScrollView {
                    HStack {
                        HStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Pokemon")
                                        .font(.title)
                                        .bold()
                                    Text("31 cards • Started since '19")
                                        .font(.subheadline)
                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("$XXXX.XX")
                                        .font(.title2)
                                    Text("+XX% • $XX")
                                        .font(.caption)
                                }
                            }
                        }
                        .padding()
                        .background(
                            StockStyleView(startingOpacity: 0.1)
                                .offset(y: 75)
                        )
                        .clipShape(Rectangle())
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray, lineWidth: 1)
                        
                    )
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
                    HStack {
                        HStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Cars")
                                        .font(.title)
                                        .bold()
                                    Text("1 car • Started since '18")
                                        .font(.subheadline)
                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("$XXXXX.XX")
                                        .font(.title2)
                                    Text("+XX% • $XX")
                                        .font(.caption)
                                }
                            }
                        }
                        .padding()
                        .background(
                            StockStyleView(startingOpacity: 0.1)
                                .offset(y: 75)
                        )
                        .clipShape(Rectangle())
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray, lineWidth: 1)
                        
                    )
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
                    HStack {
                        Spacer()
                        Text("Add more!")
                        Spacer()
                    }
                    Spacer()
                }
            }
            VStack {
                ButtonView()
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
        }
    }
}

#Preview {
    AssetsView()
        .environmentObject(ViewManager())
}
