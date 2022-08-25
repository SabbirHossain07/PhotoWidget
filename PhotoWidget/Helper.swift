//
//  Helper.swift
//  PhotoWidget
//
//  Created by Sopnil Sohan on 24/8/22.
//

import Foundation
import SwiftUI

let appGroupName = "group.com.developer.fortesting.PhotoWidget"
let userDefaultsPhotosKey = "photos"

struct Helper {
    
    static func getImageIdsFromUserDefault() -> [String] {
        
        if let userDefaults = UserDefaults(suiteName: appGroupName) {
            if let data = userDefaults.data(forKey: userDefaultsPhotosKey) {
                return try! JSONDecoder().decode([String].self, from: data)
            }
        }
        
        return [String]()
    }
    
    static func getImageFromUserDefaults(key: String) -> UIImage {
        if let userDefaults = UserDefaults(suiteName: appGroupName) {
            if let imageData = userDefaults.object(forKey: key) as? Data,
                let image = UIImage(data: imageData) {
                return image
            }
        }
        
        return UIImage(systemName: "photo.fill.on.rectangle.fill")!
    }
}
