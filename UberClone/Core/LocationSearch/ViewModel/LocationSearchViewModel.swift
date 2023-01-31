//
//  LocationSearchViewModel.swift
//  UberClone
//
//  Created by Bence Papp on 2023. 01. 16..
//

import Foundation
import MapKit

class LocationSearchViewModel: NSObject, ObservableObject, MKLocalSearchCompleterDelegate {
    // MARK: - Props

    @Published var results = [MKLocalSearchCompletion]()
    @Published var selectedLocation: String?
    private let searchCompleter = MKLocalSearchCompleter()
    var queryFragment: String = "" {
        didSet {
            searchCompleter.queryFragment = queryFragment
        }
    }

    override init() {
        super.init()
        searchCompleter.delegate = self
        searchCompleter.queryFragment = queryFragment
    }

    // MARK: - Helpers

    func selectLocation(_ location: String) {
        selectedLocation = location
    }
}

// MARK: - MkLocationSearchCompleterDelegate

extension LocationSearchViewModel: MKLookAroundViewControllerDelegate {
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        results = completer.results
    }
}
