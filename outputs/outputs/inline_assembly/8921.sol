pragma solidity ^0.8.0;
contract EquivalentBad
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
library EquivalentBadHelper
{
    function set(uint256 _x) public pure
    {
        x = _x;
    }
}<fim_middle>using EquivalentBadHelper for uint;
contract MutatedBad
{
    constructor() public
    {
        x = 0x10000000000000;
    }
    function test() public
    {
        x.set(0x11111111111111);
        x.set(0x22222222222222);
        x <<= 8;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x;
    }
}
