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
        NavigationStack {
            VStack(spacing:.zero) {
                PlayerListView(teamViewModel: teamViewModel)
                    .toolbar {
                        ToolbarItem(placement: .principal) { // <3>
                            Text("Player")
                                .foregroundColor(.white)
                                .font(.headline)
                        }
                    }
                    .toolbarBackground(Colors.main, for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbarColorScheme(.dark, for: .navigationBar)
            }
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
