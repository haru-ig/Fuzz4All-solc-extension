pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample48SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function add(   ) public {
        Counter = Counter + 1;
    }
    function multiply(   ) public {
        Counter = Counter + 1;
    }
    function increment(   ) public {
        Counter = Counter + 1;
    }
    function test(   ) public {
        Counter = Counter + 1;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = false;
            Counter = Counter + 1;
            add();
            multiply();
            increment();
        }
    }
    function test2(   ) public {
        Counter = Counter + 1;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = false;
            Counter = Counter + 1;
            add();
            add();
            add();
            add();
        }
    }
}
