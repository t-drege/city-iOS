//
//  PlayerListView.swift
//  city_ios
//
//  Created by DREGE Thomas on 26/11/2022.
//

import SwiftUI

struct PlayerListView: View {
    @ObservedObject var teamViewModel: TeamViewModel
    
    var body: some View {
       playerListBuilder()
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
        PlayerListView(teamViewModel: TeamViewModel()).previewDevice("iPad Pro")
    }
}
