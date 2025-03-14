pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88 {
    uint256 public Counter;
    bool public isCalled;
    constructor () {}
    function myCounterPlus14(    ) {
        Counter = Counter + 1;
        if (isCalled) {
            isCalled = false;
            Counter++;
        } else {
            isCalled = false;
            Counter++;
            myCounterPlus14();
        }
    }
    function check() public {
        Counter = Counter + 1;
        if (isCalled) {
            Counter++;
        } else {
            isCalled = true;
            Counter++;
            setMyCounter();
            Counter++;
        }
    }
    function increment() public {
        Counter = Counter + 1;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            Counter++;
            myCounterPlus14();
        }
        Counter = Counter + 1;
    }
    function myCounter() public {
        Counter = Counter + 1;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            Counter++;
            myCounterPlus14();
        }
    }
}
