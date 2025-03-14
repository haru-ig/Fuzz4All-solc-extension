pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample105bSemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    modifier onlyIncrement( )
    {
        require( (Counter > 0 && isCalled) || Counter > 0, "test: increment contract called multiple times or more once, before or after call to main" );
        Counter = Counter + 1;
        isCalled = true;
        _;
    }
    constructor() {
        Counter = 10;
        isCalled = true;
    }

    function test_( ) public {
        isCalled = false;
        Counter = 1;

        Counter = 1;
        Counter = Counter + 1;

        Counter = 1;
        Counter = Counter + 1;
        Counter = Counter + 1;

        Counter = 1;
        Counter = Counter + 1;
        sub_();
        Counter = Counter - 1;
    }
    function test____( ) public {
        Counter = 10;
        isCalled = true;
        Counter = 1;
        sub_();
        Counter = 9;
        Counter = Counter + 1;
        Counter = 8;
    }
    function test___( ) public {
        Counter = 10;
        Counter = Counter + 1;
        Counter = 9;
        Counter = Counter - 1;
        Counter = 8;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample106bSemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    modifier onlyIncrement( )
