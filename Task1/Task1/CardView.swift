//
//  CardView.swift
//  Task1
//
//  Created by Ram Balaji Koppula on 03/11/22.
//

import SwiftUI

struct CardView: View {
    
    var item : String
    var price : Int
    var name: String
    var quantity: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(item)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("₹ \(price)")
            Text(name)
            Text("\(quantity) kg")
        }
        .padding(10)
        .frame(width: 150, height: 200)
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView()
//    }
//}
