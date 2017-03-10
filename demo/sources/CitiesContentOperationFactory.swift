//
//  CitiesContentOperationFactory.swift
//  HubFrameworkDemo
//
//  Created by Kersten Broich on 2017-03-09.
//  Copyright © 2017 Spotify. All rights reserved.
//

import Foundation
import HubFramework

class CitiesContentOperationFactory: HUBContentOperationFactory {

    func createContentOperations(forViewURI viewURI: URL) -> [HUBContentOperation] {
        return [CitiesContentOperation(), CitiesImageContentOperation()]
    }
    
}
