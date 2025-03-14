pragma solidity ^0.8.0;
contract EasierBad_OptimallyWrongUsingYul
{
    uint256 internal constant x = 4294967296;
    uint x;
    constructor() public
    {
        x = 0;
    }
    function test() public
    {
        uint y;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        y = x >> 1;
        x >>= x >> x >> x >> x >> x >> x >> x >> x & 0xffff;
        x >>= x >> x >> x >> x >> x >> x >> x >> x & 0xffff;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
    }
    function set(uint _x) public {
        x = _x;
    }
}
contract OptimallyWrongUsingYul
{
    uint public x;
    constructor() public
    {
        x = 0;
    }
    function test() public
