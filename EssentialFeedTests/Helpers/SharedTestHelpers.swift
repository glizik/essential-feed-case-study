//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Lizik Gábor on 24/12/2023.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 1)
}

func anyURL() -> URL {
    URL(string: "http://any-url.com")!
}
