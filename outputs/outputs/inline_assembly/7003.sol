pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88Semantics {
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function setMyCounter2(   ) public {
        Counter++;
        isCalled = false;
        Counter = Counter + 1;
        setMyCounter2();
    }
    function increment(   ) public {
        Counter = Counter + 1;
        if (isCalled) {
            isCalled = false;
            Counter = Counter + 1;
        } else {
            isCalled = false;
            Counter = Counter + 1;
            setMyCounter2();
            Counter++;
        }
    }
    function test(   ) public {
        Counter++;
        isCalled = false;
        Counter = Counter + 1;
        setMyCounter2();
        Counter++;
    }
}
