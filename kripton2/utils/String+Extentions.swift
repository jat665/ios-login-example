//
//  String+Extentions.swift
//  kripton2
//
//  Created by Jorge Arindia on 27/10/22.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
