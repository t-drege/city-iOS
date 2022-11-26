//
//  PlayerListViewModel.swift
//  city_ios
//
//  Created by DREGE Thomas on 26/11/2022.
//

import Foundation

extension TeamViewModel {
    func getAllPlayerListAction() {
        playerListRepository.getAllPlayers()
            .sink(receiveCompletion: { error in
                print(error)
            }, receiveValue: {
                self.playerListResponse = $0
            }).store(in: &cancellableSet)
    }
}
