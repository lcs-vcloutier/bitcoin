//
//  CoinSubView.swift
//  bitcoin
//
//  Created by Vincent Cloutier on 2021-10-13.
//

import SwiftUI

struct CoinSubView: View {
    let item: Coin
    
    var body: some View {
        
        //        let current_price: Float
        //        let price_change_percentage_24h: Float
        //        let high_24h: Int
        //        let low_24h : Int
        VStack(alignment: .leading) {
            GroupBox {
                HStack {
                    AsyncImage(url: URL(string: item.image)!) { image in
                        image
                            .resizable()
                            .scaledToFill()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 25, height: 25)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    Text(item.symbol.uppercased())
                        .bold()
                    
                    Spacer()
                }
                
                Text("\(String(format: "%.1f", arguments: [item.current_price]))$")
                    .font(.title)
                    .bold()
                HStack {
                    Text("24H High: \(String(format: "%.1f", arguments: [item.high_24h]))$")
                    Text("24H Low: \(String(format: "%.1f", arguments: [item.low_24h]))$")
                }
            }
            .padding()
            Spacer()
            
        }
        .navigationTitle(item.name)
    }
}
