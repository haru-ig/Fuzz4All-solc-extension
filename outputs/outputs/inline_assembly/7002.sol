pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88Mutated {
    int128 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function setMyCounter(   ) public {
        Counter++;
        if (isCalled) {
            isCalled = false;
            Counter++;
        } else {
            isCalled = false;
            Counter++;
            setMyCounter();
        }
    }
    function increment(   ) public {
        Counter++;
    }
    function decrement(   ) public {
        Counter--;
    }
    function test(   ) public {
        Counter++;
        if (isCalled) {
            Counter++;
        } else {
            increment();
            Counter++;
        }
    }
}
