//
//  ViewController.swift
//  RangeSeekSliderEnhanced
//
//  Created by nareshdb on 10/25/2018.
//  Copyright (c) 2018 nareshdb. All rights reserved.
//

import UIKit
import RangeSeekSliderEnhanced

final class ViewController: UIViewController {
    
    @IBOutlet fileprivate weak var rangeSlider: RangeSeekSliderEnhanced!
    @IBOutlet fileprivate weak var rangeSliderCurrency: RangeSeekSliderEnhanced!
    @IBOutlet fileprivate weak var rangeSliderCustom: RangeSeekSliderEnhanced!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    private func setup() {
        // standard range slider
        rangeSlider.delegate = self
        rangeSlider.sliderLineBetweenHandlesImage = #imageLiteral(resourceName: "GradiantBackground")
        rangeSlider.sliderLineBetweenHandlesHeight = 50
        rangeSlider.shouldRoundCornersOfLineBetweenHandles = false
        
        // currency range slider
        rangeSliderCurrency.delegate = self
        rangeSliderCurrency.minValue = 50.0
        rangeSliderCurrency.maxValue = 150.0
        rangeSliderCurrency.selectedMinValue = 60.0
        rangeSliderCurrency.selectedMaxValue = 140.0
        rangeSliderCurrency.minDistance = 20.0
        rangeSliderCurrency.maxDistance = 80.0
        rangeSliderCurrency.handleColor = .green
        rangeSliderCurrency.handleDiameter = 30.0
        rangeSliderCurrency.selectedHandleDiameterMultiplier = 1.3
        rangeSliderCurrency.numberFormatter.numberStyle = .currency
        rangeSliderCurrency.numberFormatter.locale = Locale(identifier: "en_US")
        rangeSliderCurrency.numberFormatter.maximumFractionDigits = 2
        rangeSliderCurrency.minLabelFont = UIFont(name: "ChalkboardSE-Regular", size: 15.0)!
        rangeSliderCurrency.maxLabelFont = UIFont(name: "ChalkboardSE-Regular", size: 15.0)!
        rangeSliderCurrency.sliderLineBetweenHandlesImage = #imageLiteral(resourceName: "GradiantBackground")
        rangeSliderCurrency.sliderLineBetweenHandlesHeight = 50
        
        // custom number formatter range slider
        rangeSliderCustom.delegate = self
        rangeSliderCustom.sliderLineBetweenHandlesImage = #imageLiteral(resourceName: "GradiantBackground")
        rangeSliderCustom.minValue = 0.0
        rangeSliderCustom.maxValue = 100.0
        rangeSliderCustom.selectedMinValue = 40.0
        rangeSliderCustom.selectedMaxValue = 60.0
        rangeSliderCustom.handleImage = #imageLiteral(resourceName: "custom-handle")
        rangeSliderCustom.selectedHandleDiameterMultiplier = 1.0
        rangeSliderCustom.colorBetweenHandles = .red
        rangeSliderCustom.lineHeight = 10.0
        rangeSliderCustom.sliderLineBetweenHandlesHeight = 50
        rangeSliderCustom.numberFormatter.positivePrefix = "$"
        rangeSliderCustom.numberFormatter.positiveSuffix = "M"
    }
}


// MARK: - RangeSeekSliderEnhancedDelegate

extension ViewController: RangeSeekSliderEnhancedDelegate {
    
    func rangeSeekSlider(_ slider: RangeSeekSliderEnhanced, didChange minValue: CGFloat, maxValue: CGFloat) {
        if slider === rangeSlider {
            print("Standard slider updated. Min Value: \(minValue) Max Value: \(maxValue)")
        } else if slider === rangeSliderCurrency {
            print("Currency slider updated. Min Value: \(minValue) Max Value: \(maxValue)")
        } else if slider === rangeSliderCustom {
            print("Custom slider updated. Min Value: \(minValue) Max Value: \(maxValue)")
        }
    }
    
    func didStartTouches(in slider: RangeSeekSliderEnhanced) {
        print("did start touches")
    }
    
    func didEndTouches(in slider: RangeSeekSliderEnhanced) {
        print("did end touches")
    }
    
    func rangeSeekSlider(_ slider: RangeSeekSliderEnhanced, stringForMinValue minValue: CGFloat) -> String? {
        return ""
    }
    
    func rangeSeekSlider(_ slider: RangeSeekSliderEnhanced, stringForMaxValue maxValue: CGFloat) -> String? {
        return ""
    }
}
