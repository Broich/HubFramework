//
//  CitiesComponentFactory.swift
//  HubFrameworkDemo
//
//  Created by Kersten Broich on 2017-03-09.
//  Copyright © 2017 Spotify. All rights reserved.
//

import Foundation
import HubFramework

class CitiesComponentFactory: HUBComponentFactory {

    func createComponent(forName name: String) -> HUBComponent? {
        if name == "row" {
            return CitiesRowComponent()
        }

        if name == "image" {
            return CitiesImageComponent()
        }

        return nil
    }

}
