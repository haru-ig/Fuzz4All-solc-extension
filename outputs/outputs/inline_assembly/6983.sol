pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample86 {
    int128 public counter;
    bool isCalled;
    constructor() {
        Counter = 1;
    }
   function getCounter(int128 x) public view returns (int128) {
        return getCounter(x);
    }
    function setCounter(int128 newCounter) public {
        counter = newCounter;
        if (isCalled) {
            increment();
        } else {
            increment();
            isCalled = true;
        }
    }
    function increment() public {
        counter = counter + 1;
    }
}
