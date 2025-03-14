pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizeExample97SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function test() public view virtual {
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
contract OptimizelyExample101SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function test() public view virtual {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled
