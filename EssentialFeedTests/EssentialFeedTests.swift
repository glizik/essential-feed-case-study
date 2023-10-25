//
//  EssentialFeedTests.swift
//  EssentialFeedTests
//
//  Created by Lizik Gábor on 2023. 09. 17..
//

import XCTest
import EssentialFeed
// @testable

final class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let (_, client) = makeSUT()

        XCTAssertTrue(client.requestedURLs.isEmpty)
    }

    func test_load_requestsDataFromURL() {
        let url = URL(string: "https://a-given-url.com")!
        let (sut, client) = makeSUT(url: url)

        sut.load()

        XCTAssertEqual(client.requestedURLs, [url])
    }

    func test_loadTwice_requestsDataFromURLTwice() {
        let url = URL(string: "https://a-given-url.com")!
        let (sut, client) = makeSUT(url: url)

        sut.load()
        sut.load()

        XCTAssertEqual(client.requestedURLs, [url, url])
//        XCTAssertEqual(client.requestedURLCallCount, 2)
    }

    // MARK - Helpers

    private func makeSUT(url: URL = URL(string: "https://a-url.com")!) -> (sut: RemoteFeedLoader, client: HTTPClientSpy) {
        let client = HTTPClientSpy()
        let sut = RemoteFeedLoader(url: url, client: client)
        return (sut, client)
    }

    private class HTTPClientSpy: HTTPClient {
//        var requestedURL: URL?
//        var requestedURLCallCount = 0
        
        var requestedURLs = [URL]()
        
        func get(from url: URL) {
//            requestedURLCallCount += 1
//            requestedURL = url
            requestedURLs.append(url)
        }
    }
}
