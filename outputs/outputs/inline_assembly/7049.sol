pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample105SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_( ) public {
        Counter--;
    }
    function test__0( ) public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_();
            Counter = Counter + 1;
        }
        Counter = 1;
    }
    function test____( ) public {
        Counter = 1;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_();
            Counter = Counter + 1;
        }
        Counter = 1
