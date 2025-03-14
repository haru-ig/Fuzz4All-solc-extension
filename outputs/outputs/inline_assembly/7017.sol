pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;

    constructor() {
        isCalled = true;
    }

    function test1( ) public {
        Counter++;

        if (true) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_1();
            Counter = Counter + 1;
        }
    }
    function test2( ) public {
        Counter++;

        if (true) {
            Counter = Counter + 1;
        } else {
            Counter1 = Counter;
            isCalled = true;
            sub_1();
            Counter = Counter + 1;
        }
    }

    function test3( ) public {
        Counter++;
        Counter1 = Counter;
        isCalled = true;
        sub_1();
        Counter1 = Counter;
        Counter++;

        if ( true) {
            Counter = Counter + 1;
            Counter1 = Counter;
            isCalled = true;
            sub_1();
            Counter = Counter + 1;
            Counter1 = Counter;
        }
    }
}
