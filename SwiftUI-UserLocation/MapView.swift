//
//  ContentView.swift
//  SwiftUI-UserLocation
//
//  Created by Daniel Ayala on 13/11/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    @StateObject private var viewModel =  MapViewModel()
    
    var body: some View {
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
            .ignoresSafeArea()
            .accentColor(Color(.systemPink))
            .onAppear {
                viewModel.checkIfLocationManagerIsEnabled()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

