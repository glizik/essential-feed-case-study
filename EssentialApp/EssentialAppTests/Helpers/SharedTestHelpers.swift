//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Gabor L Lizik on 08/11/2024.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 1)
}

func anyURL() -> URL {
    URL(string: "http://any-url.com")!
}

func anyData() -> Data {
    return Data("any data".utf8)
}
