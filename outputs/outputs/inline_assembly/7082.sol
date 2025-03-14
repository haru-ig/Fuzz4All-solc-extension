pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample104bSemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    modifier onlyIncrement( )
    {
        require( (Counter > 0 && isCalled) || Counter > 0, "test: increment contract called multiple times or more once, before or after call to main" );
        isCalled = true;
        Counter = Counter + 1;
        _;
    }
    constructor() {
        isCalled = true;
    }
    function sub_( ) public {
        Counter = Counter - 1;
        require(Counter>0 || isCalled, "test: decrement contract called multiple times or more once, before or after call to main");
    }
    function test_( ) public {
        Counter = 1;
        Counter = Counter - 1;
        Counter = 2;
    }
    function test____( ) public {
        Counter = 3;
        Counter = 2;
        Counter = 1;
        Counter = Counter - 1;
    }
}
