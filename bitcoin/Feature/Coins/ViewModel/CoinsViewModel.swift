//
//  CoinsViewModel.swift
//  bitcoin
//
//  Created by Vincent Cloutier on 2021-10-13.
//

import Foundation


// ADDING THE COINS TO THE ARRAY
// Interact with service class and handle any additional business logic

protocol CoinsViewModel: ObservableObject {
    func getCoins() async
}

@MainActor // You need this w/ async await to signify you want to update this on the main thread
final class CoinsViewModelImpl: CoinsViewModel {
    
    
    @Published private(set) var coins: [Coin] = [] // access from outside can't change from outside
    
    private let service: CoinsService
    
    init(service: CoinsService) {
        self.service = service
    }
    func getCoins() async {
        do {
            self.coins = try await service.fetchCoins()
        } catch {
            print(error)
        }
    }
}
