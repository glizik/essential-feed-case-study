//
//  FeedLocalizationTests.swift
//  EssentialFeediOSTests
//
//  Created by Gabor L Lizik on 30/07/2024.
//

import XCTest
@testable import EssentialFeed

final class FeedLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)

        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
}
