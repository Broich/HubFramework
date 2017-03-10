//
//  CitiesImageContentOperation.swift
//  HubFrameworkDemo
//
//  Created by Kersten Broich on 2017-03-10.
//  Copyright © 2017 Spotify. All rights reserved.
//

import Foundation
import HubFramework

class CitiesImageContentOperation: HUBContentOperation {

    weak var delegate: HUBContentOperationDelegate?

    func perform(forViewURI viewURI: URL, featureInfo: HUBFeatureInfo, connectivityState: HUBConnectivityState, viewModelBuilder: HUBViewModelBuilder, previousError: Error?) {

        if let jsonURL = Bundle.main.url(forResource: "city-images", withExtension:"json") {
            if let jsonData =  NSData(contentsOf: jsonURL) {
                do {
                    try viewModelBuilder.addJSON(data: jsonData as Data)
                } catch {
                    print("can't add json to view builder")
                }
            }
        }

        delegate?.contentOperationDidFinish(self)
    }
}
