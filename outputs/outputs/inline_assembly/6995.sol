pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample89 {
    int128 public Counter;
    bool public isCalled;
    constructor(int128 _counter) {
        Counter = _counter;
        isCalled = true;
    }
    function test() public {
        Counter++;
        isCalled = false;
        Counter = Counter + 1;
        Counter++;
        Counter = Counter + 1;
        setMyCounter2();
    }
    function setMyCounter2() public {
        isCalled = false;
        Counter = Counter + 1;
        Counter++;
        Counter = Counter + 1;
        Counter++;
        isCalled = false;
        Counter = Counter + 1;
    }
}
