pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample89SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function subtract(   ) public {
        Counter = Counter - 1;
    }
    function decrement(   ) public {
        Counter = Counter - 1;
    }
    function test(   ) public {
        Counter--;
        if (isCalled) {
            Counter = Counter - 1;
        } else {
            isCalled = false;
            Counter = Counter - 1;
            subtract();
            decrement();
        }
    }
}
