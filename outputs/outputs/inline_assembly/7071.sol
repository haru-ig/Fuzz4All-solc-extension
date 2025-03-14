pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample105SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function add_( ) public {
        Counter++;
    }
    function test_() public {
        Counter++;
        if (isCalled) Counter = Counter + 1;
        else {
            isCalled = true;
            add_();
            Counter = Counter + 1;
            return;
        }
        Counter = 2;
    }
    function test____( ) public {
        Counter = 1;
        if (isCalled) Counter = Counter + 1;
        else {
            isCalled = true;
            add_();
            Counter = Counter + 1;
        }
        Counter = 2;
    }
}
