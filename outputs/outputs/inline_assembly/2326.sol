pragma solidity ^0.8.0;
contract Computation
{
    uint a = 10;
    uint b = 2;
    constructor() {
        assert(a == 10);
        b = 3;
    }
    function multiply() public {
        assert(a == 10);
        uint x = a;
        a = a * b;
        b = b * x;
    }
    function setB(uint x) public {
        assert(b == 3);
        b = x;
    }
}
