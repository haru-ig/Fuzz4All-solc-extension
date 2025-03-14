pragma solidity ^0.8.0;
contract MutatedGood1
{
    uint internal x;
    uint8 internal y;
    constructor(uint256 _x, uint256 _y) public
    {
        x = _x;
        y = _y;
    }
    function test() public
    {
        x <<= y;
        x >> x >>= x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x;
    }
    function set(uint256 _x, uint8 _y) public {
        x = _x;
        y = _y;
    }
}
