//
//  TeamViewModel.swift
//  city_ios
//
//  Created by DREGE Thomas on 26/11/2022.
//

import Foundation
import Combine

class TeamViewModel: ObservableObject {
    @Inject var playerListRepository: playerListRepositoryProtocol
    
    @Published var playerListResponse: [PlayerListResponse] = []
    
    var cancellableSet: Set<AnyCancellable> = []
    
}
