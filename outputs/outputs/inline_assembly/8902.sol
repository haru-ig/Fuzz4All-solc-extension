pragma solidity ^0.8.0;
contract EasierBad
{
    uint internal x;
    constructor() public
    {
        x = 4294967290;
    }
    function test() public
    {
        x <<= 8;
        x <<= 6;
        x <<= 4;
        x <<= 2;
        x <<= 0;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
    }
    function set(uint256 _x) public {
        x = _x;
    }
}
