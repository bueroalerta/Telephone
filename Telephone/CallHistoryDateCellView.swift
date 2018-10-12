//
//  CallHistoryDateCellView.swift
//  Telephone
//
//  Copyright © 2008-2016 Alexey Kuznetsov
//  Copyright © 2016-2018 64 Characters
//
//  Telephone is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  Telephone is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//

import Cocoa

final class CallHistoryDateCellView: NSTableCellView {
    @IBOutlet private weak var dateField: NSTextField!
    @IBOutlet private weak var durationField: NSTextField!

    override var backgroundStyle: NSView.BackgroundStyle {
        didSet {
            switch backgroundStyle {
            case .normal, .raised, .lowered:
                dateField.textColor = .secondaryLabelColor
                if #available(macOS 10.14, *) {} else {
                    durationField.textColor = .secondaryLabelColor
                }
            case .emphasized:
                if #available(macOS 10.14, *) {
                    dateField.textColor = .labelColor
                } else {
                    dateField.textColor = .white
                    durationField.textColor = .lightGray
                }
            }
        }
    }
}
