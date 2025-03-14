pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample104bSemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_( ) public {
        Counter--;
    }
    function test_( ) public {
        Counter++;
        if (isCalled) Counter = Counter + 1;
        else {
            isCalled = true;
            Counter = Counter + 1;
            sub_();
        }
        Counter = 2;
    }
    function test____( ) public {
        Counter = 1;
        if (isCalled) Counter = Counter + 1;
        else {
            isCalled = true;
            Counter = Counter + 1;
            sub_();
        }
        Counter = 2;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample104cSemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_( ) public {
        Counter--;
    }
    function test_( ) public {
        Counter++;
        if (isCalled) Counter = Counter + 1;
        else {
            isCalled = true;
            Counter = Counter + 1;
            sub_();
        }
        Counter = 2;
    }
    function test____( ) public {
        Counter = 1;
        if (isCalled) Counter = Counter + 1;
        else {
            isCalled = true;
            Counter = Counter + 1;
            sub_();
        }
        Counter = 2;
    }
}
