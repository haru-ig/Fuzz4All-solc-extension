pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88AlgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function setMyCounter2(   ) public {
        Counter++;
        if (isCalled) {
            isCalled = false;
            Counter = Counter + 1;
        } else {
            isCalled = false;
            Counter = Counter + 1;
            setMyCounter2();
        }
    }
    function increment(   ) public {
        Counter = Counter + 1;
    }
    function test(   ) public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = false;
            Counter = Counter + 1;
            setMyCounter2();
            Counter++;
        }
    }
}
