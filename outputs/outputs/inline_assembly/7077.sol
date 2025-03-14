pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample104aSemialgebraicEquiv2 {
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
            Counter -= 1;
            sub_();
            Counter = Counter + 1;
            return;
        }
        Counter = 2;
    }
}
