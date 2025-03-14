pragma solidity ^0.8.0;
contract m222 {
    bool public x = false;
    constructor() public {
        a();
        a();
    }
    modifier isPositive {
        require(x, 'Assertion failed: x > 0');
        _;
    }
    function a()
        public
    {
        x = true;
        x = false;
        require(x, 'Assertion failed1: x > 0');
        x = true;
        x = true;
        require(x, 'Assertion failed2: x > 0');
    }
}
