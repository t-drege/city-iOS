//
//  BrightnessControlRepository.swift
//  SiriusNext
//
//  Created by DREGE Thomas on 13/10/2022.
//

import Foundation

protocol BrightnessControlRepositoryInterface {
    func saveBrightness(value: CGFloat)
    func getBrightness() -> CGFloat
}

final class BrightnessControlRepository: BrightnessControlRepositoryInterface {
    private enum Keys {
        static let BrightnessValue = "BrightnessValue"
    }
    
    static let shared: BrightnessControlRepositoryInterface = BrightnessControlRepository()
   
    private let storage: UserDefaults
    
    init(storage: UserDefaults = .standard) {
        self.storage = storage
    }
    
}

extension BrightnessControlRepository {

    func saveBrightness(value: CGFloat) {
        self.storage.set(value, forKey: BrightnessControlRepository.Keys.BrightnessValue)
    }
    
    func getBrightness() -> CGFloat {
        let value = storage.float(forKey: BrightnessControlRepository.Keys.BrightnessValue)
        return CGFloat(value)
    }
    
}
