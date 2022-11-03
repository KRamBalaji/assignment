//
//  CartView.swift
//  Task1
//
//  Created by Ram Balaji Koppula on 03/11/22.
//

import SwiftUI

struct CartView: View {
    
    let item = ["apple", "orange", "kiwi"]
    let price = [100, 80, 90]
    let quantity = [1, 1, 1]
    let name = ["Apple", "Orange", "Kiwi"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("MINI BASKETS")
                        .foregroundColor(Color.red)
                        .underline()
                        .padding()
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(item.indices, id: \.self) { index in
                                CardView(item: self.item[index], price: self.price[index], name: self.name[index], quantity: self.quantity[index])
                                    .border(.gray, width: 2)
                            }
                        }
                        .padding(10)
                    }
                    .padding()
                    HStack {
                        Text("₹ \(sum(price: price))")
                            .foregroundColor(.red)
                        Spacer()
                        Button(action: {}) {
                            Text("Delete Cart")
                                .foregroundColor(.white)
                        }
                        .background(.red)
                        .buttonStyle(.borderedProminent)
                        .cornerRadius(10)
                        Button(action: {}) {
                            Text("Check out")
                                .foregroundColor(.white)
                        }
                        .background(.red)
                        .buttonStyle(.borderedProminent)
                        .cornerRadius(10)
                    }
                    .padding(.horizontal)
                    Text("Designer Hub")
                        .foregroundColor(Color.red)
                        .underline()
                        .padding()
                    ScrollView(.horizontal) {
                        HStack {
                            CardView(item: "shirt", price: 3000, name: "Shirt Men", quantity: 1)
                                .border(.gray, width: 2)
                        }
                        .padding(10)
                    }
                    .padding()
                    HStack {
                        Text("₹ 3000")
                            .foregroundColor(.red)
                        Spacer()
                        Button(action: {}) {
                            Text("Delete Cart")
                                .foregroundColor(.white)
                        }
                        .background(.red)
                        .buttonStyle(.borderedProminent)
                        .cornerRadius(10)
                        Button(action: {}) {
                            Text("Check out")
                                .foregroundColor(.white)
                        }
                        .background(.red)
                        .buttonStyle(.borderedProminent)
                        .cornerRadius(10)
                    }
                    .padding(.horizontal)
                    Spacer()
                }
                .navigationTitle("Cart")
            .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
    
    func sum(price: [Int]) -> Int {
        var sum = 0
        for index in price {
            sum = sum + index
        }
        return sum
    }
    
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
