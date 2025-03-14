pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88 {
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
    function getCounter1(int128 x) public view returns (int128) {
        return getCounter(x);
    }
    function setMyCounter1(int128 newMyCounter) public {
        Counter = newMyCounter;
        if (isCalled) {
            increment();
        } else {
            increment();
            isCalled = true;
        }
    }
    function increment1() public {
        Counter = Counter + 1;
    }
}
contract OptimizelyExample89 {
    int128 public Counter = 71836787217152847745129;
    bool public isCalled = false;

    function getCounter(int128 _x) public view returns (int128) {
