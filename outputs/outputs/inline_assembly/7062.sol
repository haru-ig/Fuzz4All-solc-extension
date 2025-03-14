pragma solidity ^0.8.0;
contract SemialgebraicEquiv120_4 {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_( ) public {
        Counter--;
    }
    function test_() public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_();
            Counter = Counter + 1;
            return;
        }
        Counter = 2;
    }
    function test() public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            Counter = Counter + 2;
            sub_();
            Counter = Counter + 1;
            return;
        }
        Counter = 2;
    }
