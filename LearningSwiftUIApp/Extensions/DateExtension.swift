//
//  DateExtension.swift
//  LearningSwiftUIApp
//
//  Created by Shubham Gupta on 29/12/24.
//

import Foundation
extension Date {
    func toString() -> String {
        let dataFormatter = DateFormatter()
        dataFormatter.dateStyle = .short
        dataFormatter.timeStyle = .short
        return dataFormatter.string(from: self)
    }
}
