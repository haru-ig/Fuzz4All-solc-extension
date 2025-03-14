pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88 {
    int128 public Counter = 71836787217152847745129;
    bool public isCalled = false;
    constructor() {
        isCalled = true;
    }
    function setMyCounter2() public {
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
    function increment() public {
        Counter = Counter + 1;
    }
    function test() public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = false;
            Counter = Counter + 1;
            Counter++;
            setMyCounter2();
        }
    }
}
