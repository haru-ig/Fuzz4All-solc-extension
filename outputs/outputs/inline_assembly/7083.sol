pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample104bComplexSemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    modifier onlyIncrement( )
    {

        require( (Counter >= 2 && isCalled) || Counter >= 3, "The modifier onlyIncrement should only be applied to the call to sub_." );
        isCalled = true;
        Counter = Counter + 1;
        _;
    }
    constructor() {
        isCalled = true;
    }
    function sub_( ) public {
        Counter = Counter - 1;
    }
    function test_( ) public {
        Counter = 0;
        if (isCalled) Counter = Counter + 1;
        else {
            Counter = 1;
            if (isCalled) Counter = Counter + 1;
            else {
                Counter = 0;
                Counter = Counter + 1;
            }
            Counter = 2;
        }
        Counter = 1;
    }
    function test____( ) public {
        Counter = 0;
        if (isCalled) Counter = Counter + 1;
        else {
            Counter = 1;
            if (isCalled) Counter = Counter + 1;
            else {
                Counter = 0;
                Counter = Counter + 1;
            }
            Counter =
