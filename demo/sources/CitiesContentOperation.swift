//
//  CitiesContentOperation.swift
//  HubFrameworkDemo
//
//  Created by Kersten Broich on 2017-03-09.
//  Copyright © 2017 Spotify. All rights reserved.
//

import Foundation
import HubFramework

class CitiesContentOperation: HUBContentOperation {
    weak var delegate: HUBContentOperationDelegate?

    func perform(forViewURI viewURI: URL, featureInfo: HUBFeatureInfo, connectivityState: HUBConnectivityState, viewModelBuilder: HUBViewModelBuilder, previousError: Error?) {
        // do something?

        viewModelBuilder.navigationBarTitle = featureInfo.title

//        let rowBuilder = viewModelBuilder.builderForBodyComponentModel(withIdentifier: "row-01")
//        rowBuilder.componentNamespace = "cities"
//        rowBuilder.componentName = "row"
//        rowBuilder.title = "Hello World"
//        rowBuilder.subtitle = "This is my first component"


        let cities = ["Madrid", "Rome", "Berlin", "Amsterdam"]
        let countries = [
            "Madrid" : "Spain",
            "Rome" : "Italy",
            "Berlin" : "Germany",
            "Amsterdam" : "Netherlands"
        ]

        for city in cities {
            let identifier = "city-\(city)"
            let rowBuilder = viewModelBuilder.builderForBodyComponentModel(withIdentifier: identifier)
            rowBuilder.componentNamespace = "cities"
            rowBuilder.componentName = "row"
            rowBuilder.title = city
            rowBuilder.subtitle = countries[city]
        }

        delegate?.contentOperationDidFinish(self)

    }

}
