//
//  FeedPresenterTests.swift
//  EssentialFeedTests
//
//  Created by Gabor L Lizik on 10/08/2024.
//

import XCTest
import EssentialFeed

class FeedPresenterTests: XCTestCase {
    func test_title_isLocalized() {
        XCTAssertEqual(FeedPresenter.title, localized("FEED_VIEW_TITLE"))
    }

    func test_map_createsViewModels() {
        let feed = uniqueImageFeed().models

        let viewModel = FeedPresenter.map(feed)

        XCTAssertEqual(viewModel.feed, feed)
    }

    // Mark: - Helpers

    private func localized(_ key: String, file: StaticString = #file, line: UInt = #line) -> String {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)
        let value = bundle.localizedString(forKey: key, value: nil, table: table)
        if value == key {
            XCTFail("Missing localized string for key: \(key) in table: \(table)", file: file, line: line)
        }
        return value
    }

}
