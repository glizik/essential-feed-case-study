//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Gabor L Lizik on 17/09/2024.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }
    
    var isOK: Bool {
        statusCode == HTTPURLResponse.OK_200
    }
}
