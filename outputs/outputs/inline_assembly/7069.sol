pragma solidity ^0.8.0;
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
        Counter++;
        if (isCalled == true) {
            Counter = Counter + 1;
        } else {
            counter = 2;
            isCalled =  true;
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
    function sub_() public {
        Counter--;
    }
    function test() public {
        Counter++;
        if
