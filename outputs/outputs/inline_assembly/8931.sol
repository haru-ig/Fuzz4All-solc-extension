pragma solidity ^0.8.0;
contract ComplexAssembly
{
    uint internal x;
    function set() public
    {
        x = 0x10000000000000000000000000000000000;
    }
    function test() public
    {
        x >>= (x == 1? 0 : x) >> (x == 1? 0 : x >> 1) * (x & ((x >> 1) + 1)) << (x == 1? 0 : x >> 5) + x >> (x == 1? 0 : x >> 1) * (x & ((x + 1) >> 4) | 1)) * ((x >> 1) & ((x >> 4) + 1) | 1);
        x >>= (x == 1? 0 : x >> 1) >> ((x == 1? 1 : x + 1) >> 4) - x * (x > 0)? (x >> 4) | 1 : ((x >> 4) + 1) - x;
        x >>= ((x == 1? 1 : (x + 1)) >> 3) * ((x >> 3) & ((x >> 3) + 5) | 1);
        x >>= ((x == 1? 1 : ((x + 1) >>
