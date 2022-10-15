//
//  Coordinator.swift
//  CameraApp
//
//  Created by apple on 2022/10/12.
//

import Foundation
import UIKit

class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var parent: ImagePicker
    
    init(_ parent: ImagePicker) {
        self.parent = parent
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let uiImage = info[.originalImage] as! UIImage
        UIImageWriteToSavedPhotosAlbum(uiImage, nil, nil, nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    }
}
