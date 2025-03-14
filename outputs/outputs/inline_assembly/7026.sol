pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample97SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_() public {
        Counter--;
    }
    function test() public {
        Counter = addAndSubtract(Counter);
        return;
    }
    function addAndSubtract(uint256 _a) public pure returns (uint256) {
        return _a - 3;
    }
}
contract OptimizelyExample101SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_() public {
        Counter--;
    }
    function test() public {
        Counter = addAndSubtract
