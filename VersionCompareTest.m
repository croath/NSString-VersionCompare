#import <XCTest/XCTest.h>
#import "NSString+VersionCompare.h"

@interface mariTests : XCTestCase

@end

@implementation mariTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testVersionCompare{
    XCTAssertEqual([@"1.0" versionLessThan:@"1.1"], YES);
    XCTAssertEqual([@"1.1" versionLessThan:@"1.0"], NO);
    XCTAssertEqual([@"0.9" versionLessThan:@"1.0"], YES);
    XCTAssertEqual([@"1.0" versionLessThan:@"1.1"], YES);
    XCTAssertEqual([@"1.0" versionLessThan:@"1.0.0"], NO);
    XCTAssertEqual([@"1.0.0" versionLessThan:@"1.0"], NO);
    XCTAssertEqual([@"1.0" versionLessThan:@"1.0"], NO);
    XCTAssertEqual([@"1.0" versionLessThan:@"1.1.0"], YES);
    XCTAssertEqual([@"1.0" versionLessThan:@"1.1.1"], YES);
    XCTAssertEqual([@"1.0.1" versionLessThan:@"1.1.0"], YES);
    XCTAssertEqual([@"1.0.0" versionLessThan:@"1.0.1"], YES);
    XCTAssertEqual([@"10.9" versionLessThan:@"10.10"], YES);
    
    
    XCTAssertEqual([@"1.0" versionEqualTo:@"1.0"], YES);
    XCTAssertEqual([@"1.0.0" versionEqualTo:@"1.0"], YES);
    XCTAssertEqual([@"1.0" versionEqualTo:@"1.1"], NO);
    XCTAssertEqual([@"0.9" versionEqualTo:@"0.9.0"], YES);
    XCTAssertEqual([@"10.9" versionEqualTo:@"10.9.1"], NO);
    XCTAssertEqual([@"10.9" versionEqualTo:@"10.9.0"], YES);
    XCTAssertEqual([@"10.9" versionEqualTo:@"10.9.0.0"], YES);
    XCTAssertEqual([@"10.9" versionEqualTo:@"10.9.1.0"], NO);
    
    
    XCTAssertEqual([@"1.0" versionGreaterThan:@"0.9"], YES);
    XCTAssertEqual([@"1.0" versionGreaterThan:@"1.0.0"], NO);
    XCTAssertEqual([@"1.1" versionGreaterThan:@"1.1.1"], NO);
    XCTAssertEqual([@"1.1" versionGreaterThan:@"1.1.0"], NO);
    XCTAssertEqual([@"10.11" versionGreaterThan:@"10.2"], YES);
    XCTAssertEqual([@"0.0" versionGreaterThan:@"0.1"], NO);
    XCTAssertEqual([@"0.1.0" versionGreaterThan:@"0.0.0"], YES);
    XCTAssertEqual([@"1.1.1 " versionGreaterThan:@"1.0.1"], YES);
    
    
    XCTAssertEqual([@"1.0" versionLessThanOrEqualTo:@"1.1"], YES);
    XCTAssertEqual([@"1.1" versionLessThanOrEqualTo:@"1.0"], NO);
    XCTAssertEqual([@"0.9" versionLessThanOrEqualTo:@"1.0"], YES);
    XCTAssertEqual([@"1.0" versionLessThanOrEqualTo:@"1.1"], YES);
    XCTAssertEqual([@"1.0" versionLessThanOrEqualTo:@"1.0.0"], YES);
    XCTAssertEqual([@"1.0.0" versionLessThanOrEqualTo:@"1.0"], YES);
    XCTAssertEqual([@"1.0" versionLessThanOrEqualTo:@"1.0"], YES);
    XCTAssertEqual([@"1.0" versionLessThanOrEqualTo:@"1.1.0"], YES);
    XCTAssertEqual([@"1.0" versionLessThanOrEqualTo:@"1.1.1"], YES);
    XCTAssertEqual([@"1.0.1" versionLessThanOrEqualTo:@"1.1.0"], YES);
    XCTAssertEqual([@"1.0.0" versionLessThanOrEqualTo:@"1.0.1"], YES);
    XCTAssertEqual([@"10.9" versionLessThanOrEqualTo:@"10.10"], YES);
    XCTAssertEqual([@"1.0" versionLessThanOrEqualTo:@"1.0"], YES);
    XCTAssertEqual([@"1.0.0" versionLessThanOrEqualTo:@"1.0"], YES);
    XCTAssertEqual([@"1.0" versionLessThanOrEqualTo:@"1.1"], YES);
    XCTAssertEqual([@"0.9" versionLessThanOrEqualTo:@"0.9.0"], YES);
    XCTAssertEqual([@"10.9" versionLessThanOrEqualTo:@"10.9.1"], YES);
    XCTAssertEqual([@"10.9" versionLessThanOrEqualTo:@"10.9.0"], YES);
    XCTAssertEqual([@"10.9" versionLessThanOrEqualTo:@"10.9.0.0"], YES);
    XCTAssertEqual([@"10.9" versionLessThanOrEqualTo:@"10.9.1.0"], YES);
    
    
    
    XCTAssertEqual([@"1.0" versionGreaterThanOrEqualTo:@"0.9"], YES);
    XCTAssertEqual([@"1.0" versionGreaterThanOrEqualTo:@"1.0"], YES);
    XCTAssertEqual([@"1.0.0" versionGreaterThanOrEqualTo:@"1.0"], YES);
    XCTAssertEqual([@"1.0" versionGreaterThanOrEqualTo:@"1.1"], NO);
    XCTAssertEqual([@"0.9" versionGreaterThanOrEqualTo:@"0.9.0"], YES);
    XCTAssertEqual([@"10.9" versionGreaterThanOrEqualTo:@"10.9.1"], NO);
    XCTAssertEqual([@"10.9" versionGreaterThanOrEqualTo:@"10.9.0"], YES);
    XCTAssertEqual([@"10.9" versionGreaterThanOrEqualTo:@"10.9.0.0"], YES);
    XCTAssertEqual([@"10.9" versionGreaterThanOrEqualTo:@"10.9.1.0"], NO);
    XCTAssertEqual([@"1.0" versionGreaterThanOrEqualTo:@"0.9"], YES);
    XCTAssertEqual([@"1.0" versionGreaterThanOrEqualTo:@"1.0.0"], YES);
    XCTAssertEqual([@"1.1" versionGreaterThanOrEqualTo:@"1.1.1"], NO);
    XCTAssertEqual([@"1.1" versionGreaterThanOrEqualTo:@"1.1.0"], YES);
    XCTAssertEqual([@"10.11" versionGreaterThanOrEqualTo:@"10.2"], YES);
    XCTAssertEqual([@"0.0" versionGreaterThanOrEqualTo:@"0.1"], NO);
    XCTAssertEqual([@"0.1.0" versionGreaterThanOrEqualTo:@"0.0.0"], YES);
    XCTAssertEqual([@"1.1.1 " versionGreaterThanOrEqualTo:@"1.0.1"], YES);
}

@end
