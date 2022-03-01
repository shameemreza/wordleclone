//
//  UbiquitousStore.swift
//  UbiquitousKeyValue Storage
//
//  Created by Shameem Reza on 1/3/22.
//

import Foundation

@propertyWrapper
struct UbiquitousStore<T: Codable> {
    private let key: String
    private let defaultValue: T
    
    init(key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    var wrappedValue: T {
        get {
            guard let data = NSUbiquitousKeyValueStore().object(forKey: key) as? Data else {
                return defaultValue
            }
            let value = try? JSONDecoder().decode(T.self, from: data)
            return value ?? defaultValue
        }
        set {
            let data = try? JSONEncoder().encode(newValue)
            NSUbiquitousKeyValueStore().set(data, forKey: key)
            NSUbiquitousKeyValueStore().synchronize()
        }
    }
}

extension NSUbiquitousKeyValueStore {
    @UbiquitousStore(key: "Stat", defaultValue: Statistic()) static var stat: Statistic
}
