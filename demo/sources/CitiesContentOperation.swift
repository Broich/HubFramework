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

        delegate?.contentOperationDidFinish(self)

    }

}
