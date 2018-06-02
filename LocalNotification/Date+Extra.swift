//
//  Date+Extra.swift
//  LocalNotification
//
//  Created by Rokon Uddin on 6/2/18.
//  Copyright © 2018 Rokon Uddin. All rights reserved.
//

import Foundation

extension Date {
    
    var hour: Int {
        return Calendar.current.component(.hour, from: self)
    }
    
    var minute: Int {
        return Calendar.current.component(.minute, from: self)
    }
    
    var second: Int {
        return Calendar.current.component(.second, from: self)
    }
    
    var year: Int {
        return Calendar.current.component(.year, from: self)
    }
    
    var month: Int {
        return Calendar.current.component(.month, from: self)
    }
    
    var day: Int {
        return Calendar.current.component(.day, from: self)
    }
    
    var timeZone: Int {
        return Calendar.current.component(.timeZone, from: self)
    }
    
    var shortDateString: String {
        return DateFormatter.localizedString(from: self, dateStyle: .short, timeStyle: .none)
    }
    
    var shorTimeString: String {
        return DateFormatter.localizedString(from: self, dateStyle: .none, timeStyle: .short)
    }
    
    var dateTimeString: String {
        return DateFormatter.localizedString(from: self, dateStyle: .short, timeStyle: .medium)
    }
}

