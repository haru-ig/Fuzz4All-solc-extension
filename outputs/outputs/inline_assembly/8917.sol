pragma solidity ^0.8.0;
contract New
{
    function test() public view
    {
        x <<= 8;
        x <<= 16;
        x <<= 24;
        x <<= 32;
        x <<= 40;
        x <<= 48;
        x <<= 56;
        x <<= 64;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x;
        x = 0x100000000000000000000000000;
    }
    uint public x;
    constructor() public
    {
        x = 0x10000000000000;
    }
    function set(uint256 _x) public {
        x = _x;
    }
}

contract Bad {
    constructor () public
    {
        uint256 value = 0x100000000000000;
    }
    function set(uint256 _value) public returns (bool)
    {
        x = _value;
        return true;
    }
    uint public x;
}
contract Good {
    uint public t;
    constructor () public
    {
        t = 0x10000000000000000;
    }
    function set(uint256 _t) public returns (bool) {
        t = _t;
        return true;
    }
    function test() public view returns(uint256) {
        return x;
    }
    uint public x;
}
