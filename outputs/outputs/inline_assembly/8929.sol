pragma solidity ^0.8.0;
contract SemanticEquivalentAssembly
{
    uint internal x;
    function set() public
    {
        x = 0x1000000000000000000000000000000000;
    }
    function test() public
    {
        x >>= 1;
        x >>= x >> ((x >> 1) + (x >> 2) | 1);
        x >>= x >> ((x >> 1) + x >> x * (x >> 2) + x >> (x>>4) | 1);
        x >>= x >> (x + x >> x * x >> (x + 1)) * (x & ((x>>4) | 1));
        x >>= x >> (x + x >> x >> ((x >> 1) + (x >> 2) | 1)) * (x & ((x >> 4) | 1));
        x >>= x >> (x + x >> x >> (x + 5) + x >> (x + 3) | 1) * (x & ((x >> 4) | 1));
        x >>= x >> (x + x >> x >> (x + 3) + (x >> 3) | 1) * x * (x & ((x >> 4) | 1));
    }
    function get() public view returns (uint256)
    {
        return x;
    }
}
