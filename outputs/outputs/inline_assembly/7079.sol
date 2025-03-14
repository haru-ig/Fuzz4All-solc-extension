pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample104aSemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_( ) public {
        Counter--;
    }
    function test_**( ) public {
        isCalled = false;
        Counter = Counter + 5;
        sub_();
        Counter = Counter + 2;
        Counter = 1;
    }
    function test_() public {
        Counter = Counter + 5;
        Counter = Counter + 5;
        add_();
        sub_();
        Counter = Counter + 2;
        Counter = Counter + 2;
        Counter = 1;
    }
    function add_( ) public {
        Counter += 5;
        Counter += Counter;
        Counter = 1;
    }
}
