//
//  CitiesRowComponentr.swift
//  HubFrameworkDemo
//
//  Created by Kersten Broich on 2017-03-09.
//  Copyright © 2017 Spotify. All rights reserved.
//

import Foundation
import HubFramework

class CitiesRowComponent: HUBComponent {

    var view: UIView?

    var layoutTraits: Set<HUBComponentLayoutTrait> {
        return [.fullWidth, .stackable]
    }

    func preferredViewSize(forDisplaying model: HUBComponentModel, containerViewSize: CGSize) -> CGSize {
        return CGSize(width: containerViewSize.width, height: 50)
    }

    func loadView() {
        view = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
    }

    func prepareViewForReuse() {
        guard let cell = view as? UITableViewCell else { return }
        cell.prepareForReuse()
    }

    func configureView(with model: HUBComponentModel, containerViewSize: CGSize) {
        guard let cell = view as? UITableViewCell else { return }

        cell.textLabel?.text = model.title
        cell.detailTextLabel?.text = model.subtitle
    }

}
