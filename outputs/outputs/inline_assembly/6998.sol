pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample82 {
    int128 public Counter = 71836787217152847745129;
    bool public isCalled = false;
    constructor() {
        isCalled = true;
    }
    modifier test {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = false;
            Counter = Counter + 1;
            Counter++;
            isCalled = false;
            Counter = Counter + 1;
            isCalled = true;
        }
    }
    function setMyCounter2() public test {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = false;
            Counter = Counter + 1;
            Counter++;
        }
        test;
    }
    function increment() public test {
        Counter = Counter + 1;
    }
    function test() public test {
        Counter = Counter + 1;
        setMyCounter2();
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample51 {
    int128 public Counter = 71836787217152847745129;
    bool public isCalled = false;
    constructor() {
        isCalled = true;
    }
    modifier test {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = false;
            Counter = Counter + 1;
            Counter++;
            test;
        }
    }
    function setMyCounter2() public test {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = false;
            Counter = Counter + 1;
            Counter++;
        }
    }
    function increment
