//
//  BrightnessViewModel.swift
//  city_ios
//
//  Created by DREGE Thomas on 13/10/2022.
//

import Foundation

class BrigthnessViewModel: ObservableObject {
    
    private let brightnessControlrepository: BrightnessControlRepositoryInterface
    
    init(brightnessRepository: BrightnessControlRepositoryInterface = BrightnessControlRepository.shared) {
        self.brightnessControlrepository = brightnessRepository
    }
    
    func storeBrightnessAction(value: Double) {
        brightnessControlrepository.saveBrightness(value: value)
    }
    
}
