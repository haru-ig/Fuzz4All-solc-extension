pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88 {
    uint128 public Counter = 71836787217152847745129;
    bool public isCalled = false;
    constructor() {
        isCalled = true;
        Counter++;
    }
    function increment() public {
        if (isCalled) {
            Counter = Counter + 1;
            isCalled = false;
            increment();
            return;
        }
        Counter = Counter + 1;
        increment();
        setMyCounter2();
    }
    function setMyCounter2() public {
        isCalled = false;
        Counter++;
    }
}
