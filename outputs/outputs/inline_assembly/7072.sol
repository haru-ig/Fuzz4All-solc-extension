pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample105aSemialgebraicEquiv {
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
        if (isCalled) Counter = Counter + 1;
        else {
            isCalled = true;
            sub_();
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
            sub_();
            Counter = Counter + 1;
        }
        Counter = 2;
    }
}
contract OptimizelyExample104 {

    function test(uint256 i) public {
        uint256 value = 0;
        if (i!= 1) value = i;
        if (i!= 2) value = value + 1;
        if (i!= 3) value = value + 2;
        if (i!= 4) value = value + 3;
        if (i!= 5) value = value + 4;
        if (i == 6) value = value + 5;
        else value = value + 6;
        if (i == 7) value = value + 7;
        else value = value + 8;
        if (i == 8) value = value + 9;
        else value = value + 10;
        if (i == 9) value = value + 11;
        else value = value + 12;
        if (i == 10) value = value + 13;
        else value = value + 14;
        if (i == 11) value = value + 15;
        else value =
