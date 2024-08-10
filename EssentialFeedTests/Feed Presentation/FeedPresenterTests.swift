//
//  FeedPresenterTests.swift
//  EssentialFeedTests
//
//  Created by Gabor L Lizik on 10/08/2024.
//

import XCTest

final class FeedPresenter {
    init(view: Any) {
        
    }
}

class FeedPresenterTests: XCTestCase {
    func test_init_doesNotSendMessagesToView() {
        let view = ViewSpy()
        
        _ = FeedPresenter(view: view)
        
        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
    }
    
    // Mark: - Helpers
    
    private class ViewSpy {
        let messages = [Any]()
    }
}
