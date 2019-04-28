//
//  SettingsEntity.swift
//  Merchant
//
//  Created by Jean-Baptiste Dominguez on 2019/04/25.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import Foundation

enum SettingsEntry: CaseIterable {
    case companyName
    case address
    case selectedCurrency
}

extension SettingsEntry {
    var title: String {
        switch self {
        case .companyName:
            return Constants.Strings.companyName
        case .address:
            return Constants.Strings.destinationAddress
        case .selectedCurrency:
            return Constants.Strings.localCurrency
        }
    }
    
    var placeholder: String {
        switch self {
        case .companyName:
            return Constants.Strings.enterCompanyName
        case .address:
            return Constants.Strings.enterDestinationAddress
        default:
            return ""
        }
    }
}
