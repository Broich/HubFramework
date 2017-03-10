//
//  CitiesImageComponent.swift
//  HubFrameworkDemo
//
//  Created by Kersten Broich on 2017-03-10.
//  Copyright © 2017 Spotify. All rights reserved.
//

import Foundation
import HubFramework

class CitiesImageComponent: HUBComponentWithImageHandling {
    var view: UIView?

    var layoutTraits: Set<HUBComponentLayoutTrait> {
        return [.compactWidth]
    }

    func loadView() {
        view = UIImageView(frame: .zero)
        view?.backgroundColor = .gray
    }

    func preferredViewSize(forDisplaying model: HUBComponentModel, containerViewSize: CGSize) -> CGSize {
        let marginLeft: CGFloat = 15.0
        let width = floor((containerViewSize.width - marginLeft * 3) / 2);

        return CGSize(width: width, height: floor(width * 0.7))
    }

    func prepareViewForReuse() {
        if let imageView = view as? UIImageView {
            imageView.image = nil
        }
    }

    func configureView(with model: HUBComponentModel, containerViewSize: CGSize) {

    }

    func preferredSizeForImage(from imageData: HUBComponentImageData, model: HUBComponentModel, containerViewSize: CGSize) -> CGSize {
        return preferredViewSize(forDisplaying: model, containerViewSize: containerViewSize)
    }

    func updateView(forLoadedImage image: UIImage, from imageData: HUBComponentImageData, model: HUBComponentModel, animated: Bool) {
        if let imageView = view as? UIImageView {
            imageView.image = image
        }
    }

}
