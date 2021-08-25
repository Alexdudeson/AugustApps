//
//  PhotoLibraryManager.swift
//  AugustApps
//
//  Created by Alexey Yarov on 25/08/2021.
//  Copyright © 2021 Alexey Yarov. All rights reserved.
//

//import PhotosUI
//
//class PhotoLibraryManager {
//
//    static let shared = PhotoLibraryManager()
//    private init () {}
//
//    func saveImage (canvasView: Canvas){
//
//        UIGraphicsBeginImageContextWithOptions(canvasView.bounds.size, false, UIScreen.main.scale)
//        canvasView.drawHierarchy(in: canvasView.bounds, afterScreenUpdates: true)
//
//        let image = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//
//        if image != nil {
//            PHPhotoLibrary.shared().performChanges() {
//                PHAssetChangeRequest.creationRequestForAsset(from: image!)
//                }
//            completionHandler {
//                success, error in success ? print("Your Image is saved") : print(error?.localizedDecription //?? "No descrition Error")
//
//            }
//        }
//    }
//}
