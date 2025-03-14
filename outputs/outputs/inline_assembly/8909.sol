pragma solidity ^0.8.0;
contract EasierGood
{
    uint internal x;
    constructor() public
    {
        x = 4294967290;
    }
    function test(uint256 _x) public
    {
        x <<= 8;
        x <<= 6;
        x <<= 4;
        x <<= 2;
        x <<= 0;
        x >>= _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x;
        x >>= _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x;
        x >>= _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x;
        x >>= _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x;
        x >>= _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x;
        x >>= _x >> _x >> _x >> _x >> _x >> _x >> _x >> _x;
    }
    function set(_x) public {
        x = _x;
    }
}
