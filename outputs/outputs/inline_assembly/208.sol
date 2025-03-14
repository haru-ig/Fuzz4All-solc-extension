pragma solidity ^0.8.0;
contract E7H2
{
    uint public counter = 123;
    constructor(uint _x) public {
        counter = _x;
    }
    function set(uint _x) public returns (bool)
    {
        counter = _x;
        return true;
    }
    function get() public returns (uint) {
        return counter;
    }
    modifier counter_m(uint _x)
    {
        counter = _x;
        _;
    }
}
