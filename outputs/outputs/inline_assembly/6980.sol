pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample85 {
    int128 public Counter = -1290258504300994351364813;
    bool public isCalled = false;
    constructor() {
        isCalled = true;
    }
    function getCounter(int128 x) public view returns (int128) {
        return getCounter(x);
    }
    function setCounter(int128 newCounter) public {
        Counter = newCounter;
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
