pragma solidity ^0.8.0;
contract MutatedBad
{
    uint internal x;
    constructor() public
    {
        x = 0x10000000000000;
    }
    function test() public
    {
        x <<= 8;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x;
    }
    function set(uint256 _x) public {
        x = _x;
    }
}
