//
//  HomeView.swift
//  UberClone
//
//  Created by Bence Papp on 2023. 01. 06..
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment: .top) {
            UberMapViewRepresentable()
                .ignoresSafeArea()

            LocationSearchActivationView()
                .padding(.top, 72)

            MapViewActionButton()
                .padding(.leading)
                .padding(.top, 4)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
