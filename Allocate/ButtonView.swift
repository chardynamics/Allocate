//
//  ButtonView.swift
//  Allocate
//
//  Created by Charles Duong on 5/21/25.
//

import SwiftUI

struct ButtonView: View {
    @EnvironmentObject private var currentView: ViewManager
    var body: some View {
            HStack {
                Spacer()
                VStack {
                    HStack(alignment: .bottom) {
                        Menu {
                            Button("Assets") {
                                currentView.currentView = .assets
                            }
                            .disabled(currentView.currentView == .assets)
                            Button("Wishlist") {
                                currentView.currentView = .wishlist
                            }
                            .disabled(currentView.currentView == .wishlist)
                            Button("Summary") {
                                currentView.currentView = .summary
                            }
                            .disabled(currentView.currentView == .summary)
                        } label: {
                            Button(action: {
                                print("Menu button tapped")
                            }) {
                                Image(systemName: "line.horizontal.3")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    .padding()
                            }
                                .frame(width: 60, height: 60)
                                .background(.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        Menu {
                            Button("Add A Item") {
                                //screen = "AddScreen"
                            }
                            Button("Import Portfolio") {
                                //screen = "AddScreen"
                            }
                            .disabled(true)
                        } label: { Button(action: {
                            
                        }) {
                            Image(systemName: "plus.app")
                                .resizable()
                                .frame(width: 55, height: 55)
                                .foregroundColor(.white)
                                .padding()
                        }
                            .frame(width: 95, height: 95)
                            .background(.green)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                    }
                        .padding(EdgeInsets(top:0, leading: 10, bottom: 0, trailing: 20))
                }
            }
        }
}

#Preview {
    ButtonView()
        .environmentObject(ViewManager())
}
