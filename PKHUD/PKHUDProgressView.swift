//
//  PKHUDProgressVIew.swift
//  PKHUD
//
//  Created by Philip Kluz on 6/12/15.
//  Copyright (c) 2016 NSExceptional. All rights reserved.
//  Licensed under the MIT license.
//

import UIKit
import QuartzCore

/// PKHUDProgressView provides an indeterminate progress view.
open class PKHUDProgressView: PKHUDSquareBaseView, PKHUDAnimating {

    public init(title: String? = nil, subtitle: String? = nil) {
        let image = PKHUDAssets.progressActivityImage.withRenderingMode(.alwaysTemplate)
        super.init(image: image, title: title, subtitle: subtitle)
        imageView.tintColor = .white
        imageView.alpha = 1.0
        imageView.contentMode = .scaleAspectFit
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    public func startAnimation() {
        imageView.layer.add(PKHUDAnimation.discreteRotation, forKey: "progressAnimation")
    }

    public func stopAnimation() {
    }
}
