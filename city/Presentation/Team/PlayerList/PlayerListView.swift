//
//  PlayerListView.swift
//  city_ios
//
//  Created by DREGE Thomas on 26/11/2022.
//

import SwiftUI
import RealmSwift

struct PlayerListView: View {
    @ObservedObject var teamViewModel: TeamViewModel
    
    var body: some View {
        VStack(spacing: .zero) {
            ForEach(teamViewModel.playerListResponse) { index in
                    CCellPlayer(playerName: "Thomas Drège", totalGoal: 10, valuePlayer: 10, id: 1, lastElementId: 10)
                }
            }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .onAppear {
            teamViewModel.getAllPlayerListAction()
            print(teamViewModel.playerListResponse.count)
//            let player = Player(firstname: "Drège", lastname: "Thomas")
//
//            let config = Realm.Configuration(
//                schemaVersion: 1)
//
//            let realm  = try! Realm(configuration: config)
//            try! realm.write {
//
//                realm.add(player)
//            }
//            print(realm.objects(Player.self))
        }
    }
    
    //UIDevice.current.userInterfaceIdiom == .phone
    @ViewBuilder func playerListBuilder() -> some View {
        ForEach(teamViewModel.playerListResponse) { player in
            Text(player.firstname)
        }.onAppear {
            teamViewModel.getAllPlayerListAction()
        }
    }
}

struct PlayerListView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListView(teamViewModel: TeamViewModel())
    }
}
