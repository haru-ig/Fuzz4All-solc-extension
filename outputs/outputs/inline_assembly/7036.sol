pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample97SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }

    function test_() public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_( );
            Counter = Counter + 1;
            return;
        }
        Counter = 2;
    }
}


pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample97SemialgebraicEquiv {
    uint256
