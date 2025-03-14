pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample115SemialgebraicEquiv {
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
            sub_();
            Counter = Counter + 1;
            Counter = Counter * Counter;
            return;
        }
    }
}
contract OptimizelyExample133SemialgebraicEquiv {
    uint256 public Counter;
    uint256 public Counter2;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_() public {
