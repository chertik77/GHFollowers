//
//  String+Ext.swift
//  GHFollowers
//
//  Created by Denys Babych on 11/03/2025.
//

import Foundation

extension String {
    var isValidGithubUsername: Bool {
        let usernameFormat = "^[a-zA-Z\\d](?:[a-zA-Z\\d]|-(?=[a-zA-Z\\d])){0,38}$"
        let usernamePredicate = NSPredicate(format: "SELF MATCHES %@", usernameFormat)
        
        return usernamePredicate.evaluate(with: self)
    }
}
