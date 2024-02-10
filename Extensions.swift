//
//  Extensions.swift
//  practice
//
//  Created by Abdulwadud Abdulkadir on 2/3/24.
//

import Foundation
extension TimeInterval {
    func toCountdownString() -> String {
        let totalSeconds = Int(self)
        let years = totalSeconds / (3600 * 24 * 365)
        let months = (totalSeconds % (3600 * 24 * 365)) / (3600 * 24 * 30)
        let weeks = (totalSeconds % (3600 * 24 * 30)) / (3600 * 24 * 7)
        let days = (totalSeconds % (3600 * 24 * 7)) / (3600 * 24)
        let hours = (totalSeconds % (3600 * 24)) / 3600
        let minutes = (totalSeconds % 3600) / 60
        let seconds = totalSeconds % 60

        return "\(years > 0 ? "\(years)yr " : "")\(months > 0 ? "\(months)mths " : "")\(weeks > 0 ? "\(weeks)wks " : "")\(days > 0 ? "\(days)days " : "")\(hours > 0 ? "\(hours)hrs " : "")\(minutes > 0 ? "\(minutes)min " : "")\(seconds > 0 ? "\(seconds)secs" : "")"
    }
}

