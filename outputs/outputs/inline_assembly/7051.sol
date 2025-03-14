pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample97SemialgebraicEquiv_ {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_( ) public {
        Counter = Counter - 1;
    }
    function test( ) public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_();
            Counter = Counter + 1;
            return;
        }
    }
}
contract OptimizelyExample101SemialgebraicEquiv_ {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_( ) public {
        Counter--;
    }
    function
