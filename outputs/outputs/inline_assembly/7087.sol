pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample104bMutated {
    uint256 public Counter;
    bool public isCalled;
    modifier onlyIncrement( )
    {
        require( (Counter > 0 && isCalled) || Counter > 0, "test: increment contract called multiple times or more once, before or after call to main" );
        ++Counter;
        isCalled = true;
        _;
    }
    constructor() {
        isCalled = true;
        Counter = 1;
    }
    function sub_( ) public {
        Counter = 3;
        require(Counter >= 0 || isCalled, "test: decrement contract was called more than once or more than twice, before or after call to main");
    }
    function test_( ) public {
        Counter = 3;
        Counter = Counter - 2;
        Counter = 1;
    }

    function test____( ) public {
        Counter = Counter + 1;
        Counter = Counter + 1;
        Counter = Counter + 2;
        Counter = Counter + 1;
        Counter = Counter + 1;
        Counter = 9865677511352352;
        Counter = 1;
    }
}
