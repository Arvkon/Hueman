//
//  UIColor.swift
//  Hueman
//
//  Created by Arvid Kongstad on 09/06/2019.
//  Copyright © 2019 Weekend Industries. All rights reserved.
//

import UIKit

extension UIColor {

    /// Generates a random `UIColor`.
    ///
    /// - Parameter alpha: The opacity value of the generated color. Defaults to 1.0 (fully opaque).
    class func random(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: CGFloat.random(in: 0.0...1.0),
                       green: CGFloat.random(in: 0.0...1.0),
                       blue: CGFloat.random(in: 0.0...1.0),
                       alpha: alpha)
    }

    /// Returns the hexadecimal representation (#RRGGBB) of the color.
    var hex: String {
        guard let components = cgColor.components, components.count >= 3 else { return "" }

        let r = Float(components[0])
        let g = Float(components[1])
        let b = Float(components[2])

        return String(format: "%02lX%02lX%02lX", lroundf(r * 255), lroundf(g * 255), lroundf(b * 255))
    }

}
