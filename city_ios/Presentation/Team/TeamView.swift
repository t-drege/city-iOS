//
//  TeamView.swift
//  city_ios
//
//  Created by DREGE Thomas on 26/11/2022.
//

import SwiftUI

struct TeamView: View {
    @StateObject var teamViewModel = TeamViewModel()
    
    var body: some View {
       PlayerListView(teamViewModel: teamViewModel)
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
