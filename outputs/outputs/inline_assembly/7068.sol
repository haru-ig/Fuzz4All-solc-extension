pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample97SemialgebraicEquiv {
    uint256 public Counter;

    bool public isCalled;
    constructor() {
        Counter = 0;
        Counter = 1;
        Counter = 2;
        Counter = 3;
        isCalled = true;
        isCalled = true;
        isCalled = true;
        isCalled = false;
    }
    function sub_() public {
        Counter--;
        isCalled = false;
    }
    function test() public {
        Counter++;
        sub_();
        Counter++;
        isCalled = false;
        Counter++;
        isCalled = false;
        Counter++;
        isCalled = false;
        isCalled = false;
        isCalled = true;
    }
}
contract OptimizelyExample101SemialgebraicEquiv {
