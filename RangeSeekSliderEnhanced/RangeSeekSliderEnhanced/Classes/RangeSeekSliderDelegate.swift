//
//  RangeSeekSliderEnhancedDelegate.swift
//  RangeSeekSliderEnhanced
//
//  Created by Keisuke Shoji on 2017/03/09.
//
//

import CoreGraphics

public protocol RangeSeekSliderEnhancedDelegate: class {

    /// Called when the RangeSeekSliderEnhanced values are changed
    ///
    /// - Parameters:
    ///   - slider: RangeSeekSliderEnhanced
    ///   - minValue: minimum value
    ///   - maxValue: maximum value
    func rangeSeekSlider(_ slider: RangeSeekSliderEnhanced, didChange minValue: CGFloat, maxValue: CGFloat)

    /// Called when the user has started interacting with the RangeSeekSliderEnhanced
    ///
    /// - Parameter slider: RangeSeekSliderEnhanced
    func didStartTouches(in slider: RangeSeekSliderEnhanced)

    /// Called when the user has finished interacting with the RangeSeekSliderEnhanced
    ///
    /// - Parameter slider: RangeSeekSliderEnhanced
    func didEndTouches(in slider: RangeSeekSliderEnhanced)

    /// Called when the RangeSeekSliderEnhanced values are changed. A return `String?` Value is displayed on the `minLabel`.
    ///
    /// - Parameters:
    ///   - slider: RangeSeekSliderEnhanced
    ///   - minValue: minimum value
    /// - Returns: String to be replaced
    func rangeSeekSlider(_ slider: RangeSeekSliderEnhanced, stringForMinValue minValue: CGFloat) -> String?

    /// Called when the RangeSeekSliderEnhanced values are changed. A return `String?` Value is displayed on the `maxLabel`.
    ///
    /// - Parameters:
    ///   - slider: RangeSeekSliderEnhanced
    ///   - maxValue: maximum value
    /// - Returns: String to be replaced
    func rangeSeekSlider(_ slider: RangeSeekSliderEnhanced, stringForMaxValue: CGFloat) -> String?
    
    /// Called when the RangeSeekSliderEnhanced values are changed. A return `String?` Value is used to display instead of the default value.
    ///
    /// - Parameters:
    ///   - slider: RangeSeekSliderEnhanced
    ///   - stringForSelectedValue: value
    /// - Returns: String to be replaced
    func rangeSeekSlider(_ slider: RangeSeekSliderEnhanced, stringForSelectedValue: CGFloat) -> String?
}


// MARK: - Default implementation

public extension RangeSeekSliderEnhancedDelegate {

    func rangeSeekSlider(_ slider: RangeSeekSliderEnhanced, didChange minValue: CGFloat, maxValue: CGFloat) {}
    func didStartTouches(in slider: RangeSeekSliderEnhanced) {}
    func didEndTouches(in slider: RangeSeekSliderEnhanced) {}
    func rangeSeekSlider(_ slider: RangeSeekSliderEnhanced, stringForMinValue minValue: CGFloat) -> String? { return nil }
    func rangeSeekSlider(_ slider: RangeSeekSliderEnhanced, stringForMaxValue maxValue: CGFloat) -> String? { return nil }
    func rangeSeekSlider(_ slider: RangeSeekSliderEnhanced, stringForSelectedValue: CGFloat) -> String? { return nil }
}
