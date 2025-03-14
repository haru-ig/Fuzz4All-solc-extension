pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample87 {
    int128 public Counter = 71836787217152847745129;
    bool public isCalled = false;
    constructor() {
        isCalled = true;
    }
    function getCounter(int128 x) public view returns (int128) {
        return getCounter(x);
    }
    function setMyCounter(int128 newMyCounter) public {
        Counter = newMyCounter;
        if (isCalled) {
            increment();
        } else {
            increment();
            isCalled = true;
        }
    }
    function increment() public {
        Counter = Counter + 1;
    }
}
