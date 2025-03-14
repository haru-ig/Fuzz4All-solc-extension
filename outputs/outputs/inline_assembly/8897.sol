pragma solidity ^0.8.0;
contract EasierGood_Better
{
    uint256 internal x;
    constructor() public
    {
        x = 4294967290;
    }
    function test() public
    {
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    }
    function set(uint256 _x) public {
        x = _x;
    }
}
