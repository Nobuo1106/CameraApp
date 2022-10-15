//
//  UIImageExtension.swift
//  CameraApp
//
//  Created by apple on 2022/10/15.
//

import Foundation
import UIKit

extension UIImage {
    func redraw() -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        return UIGraphicsImageRenderer(size: size, format: format)
            .image { context in
                draw(in: CGRect(origin: .zero, size: size))
            }
    }
}
