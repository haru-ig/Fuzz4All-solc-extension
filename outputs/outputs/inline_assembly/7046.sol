pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample99SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_() public {
        Counter--;
    }
    function test() public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            if (Counter == 0) {
                sub_();
            }
            Counter = Counter + 1;
            return;
        }
        isCalled = false;
        Counter++;
    }
}
contract OptimizelyExample135SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub
