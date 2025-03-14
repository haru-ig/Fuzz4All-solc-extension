pragma solidity ^0.8.0;
contract EarlierMutated
{
    uint internal x;
    constructor() public
    {
        x = 0x10000000000000;
    }
    function test() public
    {
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x;
        x <<= 0;
        x <<= 48;
        x >>= 48;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x;
        x <<= 48;
        x <<= 40;
        x <<= 42;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x >> x;
        x <<= x >> x >> x >> x >> x >> x >> x >> x >> x >> x;
        x <<= 24;
        x <<= 24;
        x <<= 24;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x >> x;
        x <<= 56;
        x <<= 56;
        x >>= 40;
        x >>= 48;
        x >>= 56;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x >> x;
    }
    function set(uint256 _x) public {
        x = _x;
    }
}
