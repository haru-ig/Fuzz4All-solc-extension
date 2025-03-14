pragma solidity ^0.8.0;

contract OptimizelyExample104bMutatedSemialgebraicEquiv2 {
    uint256 public Counter;
    bool public isCalled;
    modifier onlyIncrement2( )
    {
        require( (Counter > 0 && isCalled) || Counter > 0, "test2: increment contract called multiple times or more once, before or after call to main" );
        isCalled = true;
        Counter = Counter + 1;
        _;
    }
    constructor() {
        isCalled = false;
    }
    function sub_( ) public {
        Counter = Counter - 1;
        require(Counter>0 || isCalled, "test2: decrement contract called multiple times or more once, before or after call to main");
    }
    function test_( ) public {
        Counter = 0;
        if (isCalled) Counter = Counter + 1;
        else {
            Counter = 1;
            if (isCalled) Counter = Counter + 2;
            else {
                Counter = 0;
                Counter = Counter + 3;
            }
            Counter = 2;
        }
        Counter = 3;
    }
    function test____( ) public {
        Counter = 0;
        if (isCalled) Counter = Counter + 1;
        else {
            Counter = 1;
            if (isCalled) Counter = Counter + 2;
            else {
