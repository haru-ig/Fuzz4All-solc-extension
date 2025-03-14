pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample104SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_() public {
        Counter--;
    }
    function test_( ) public {
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
    function test( ) public {
        Counter = 1;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_();
            Counter = Counter + 1;
        }
        Counter = 2;
    }
}
/* Please
