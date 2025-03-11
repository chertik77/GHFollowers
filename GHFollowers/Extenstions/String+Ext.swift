//
//  String+Ext.swift
//  GHFollowers
//
//  Created by Denys Babych on 11/03/2025.
//

import Foundation

extension String {
    var isValidGithubUsername: Bool {
        let usernameFormat = "/^[a-z\\-d](?:[a-z\\-d]|-(?=[a-z\\-d])){0,38}$/i"
        let usernamePredicate = NSPredicate(format: "SELF MATCHES %@", usernameFormat)
        
        return usernamePredicate.evaluate(with: self)
    }
}
